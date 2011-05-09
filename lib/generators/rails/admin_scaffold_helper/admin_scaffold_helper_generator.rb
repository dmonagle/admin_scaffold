require 'rails/generators/rails/helper/helper_generator'

module Rails
  module Generators
    class AdminScaffoldHelperGenerator < HelperGenerator
      def self.source_root
        @_source_root ||= File.expand_path("templates", File.dirname(__FILE__))
      end
    protected
    end
  end
end