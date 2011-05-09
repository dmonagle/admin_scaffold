require 'rails/generators/erb'
require 'rails/generators/erb/scaffold/scaffold_generator'
require 'rails/generators/resource_helpers'

module AdminScaffold
  module Generators
    class ScaffoldGenerator < Erb::Generators::ScaffoldGenerator
      source_root File.expand_path("../templates", __FILE__)

      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"

      def create_root_folder
        empty_directory File.join("app/views", controller_file_path)
      end

      def copy_view_files
        available_views.each do |view|
          filename = filename_with_extensions(view)
          template filename, File.join("app/views", controller_file_path, filename)
        end
      end

    protected

      def available_views
        %w(index edit show new _form)
      end
    end
  end
end
