module Antlr4Native
  module StringHelpers
    def capitalize(str)
      str.sub(/\A(.)/) { $1.upcase }
    end

    def underscore(str)
      str
        .gsub(/([A-Z\d]+)([A-Z][a-z])/, '\1_\2')
        .gsub(/([a-z\d])([A-Z])/, '\1_\2')
        .gsub('-', '_')
        .downcase
    end

    def dasherize(str)
      underscore(str).gsub('_', '-')
    end
  end

  StringHelpers.extend(StringHelpers)
end
