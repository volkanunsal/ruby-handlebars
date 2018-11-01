# frozen_string_literal: true

require_relative 'context'

module Handlebars
  class Template
    def initialize(hbs, ast)
      @hbs = hbs
      @ast = ast
    end

    def call(args)
      @hbs.set_context(args) if args.is_a? Hash

      @ast.eval(@hbs)
    end
  end
end
