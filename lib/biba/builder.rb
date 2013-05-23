require 'bibtex'
require 'citeproc'
require 'erb'

module Biba
  class Builder
    attr_reader :original

    def initialize(bibtex)
      @original = bibtex

      @filename = File.join(File.expand_path(File.dirname(__FILE__)), "templates", "simple.html.erb")
    end

    def to_html
      @html_template = ERB.new(File.read(@filename))
      @html_template.result(binding)
    end
  end
end
