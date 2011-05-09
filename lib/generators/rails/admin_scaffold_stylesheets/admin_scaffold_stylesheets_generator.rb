require 'rails/generators/rails/stylesheets/stylesheets_generator'

module Rails
  module Generators
    class AdminScaffoldStylesheetsGenerator < StylesheetsGenerator
      def self.source_root
        @_source_root ||= File.expand_path("templates", File.dirname(__FILE__))
      end
    protected
    end
  end
end