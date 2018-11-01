# frozen_string_literal: true

module Handlebars
  module Context
    def get(path)
      items = path.split('.')

      current = @data
      current = get_attribute(current, items.shift) until items.empty?

      current
    end

    def add_item(key, value)
      @data[key] = value
    end

    private

    def get_attribute(item, attribute)
      sym_attr = attribute.to_sym
      str_attr = attribute.to_s

      if item.respond_to?(:[])
        return item[sym_attr] if item.key?(sym_attr)
        return item[str_attr] if item.key?(str_attr)
      end

      return item.instance_variable_get("@#{attribute}") if item.instance_variables.include?("@#{attribute}")

      return item.send(sym_attr) if item.respond_to?(sym_attr)
    end
  end
end
