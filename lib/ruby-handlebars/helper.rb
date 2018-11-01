# frozen_string_literal: true

require_relative 'tree'

module Handlebars
  class Helper
    def initialize(hbs, func)
      @hbs = hbs
      @func = func
    end

    def apply(context, arguments = [], block = [])
      arguments = [arguments] unless arguments.is_a? Array
      args = [context] + arguments.map { |arg| arg.eval(context) } + split_block(block || [])

      @func.call(*args)
    end

    def split_block(block)
      helper_block = Tree::Block.new([])
      inverse_block = Tree::Block.new([])

      receiver = helper_block
      else_found = false

      block.each do |item|
        if item.is_a?(Tree::Replacement) && item.else?
          receiver = inverse_block
          else_found = true
          next
        end

        receiver.add_item(item)
      end

      return [helper_block, inverse_block] if else_found

      [helper_block]
    end
  end
end
