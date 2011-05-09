require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Rails
  module Generators
    class AdminScaffoldScaffoldControllerGenerator < ScaffoldControllerGenerator
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      def self.source_root
        @_source_root ||= File.expand_path("templates", File.dirname(__FILE__))
      end
      
      def create_search_route
      end
      
      def create_sort_route
      end

    protected
    end
  end
end