require 'rails'
require "admin_scaffold/engine"
require "simple_page"
require "simple_form"

module AdminScaffold
  module Rails
    class Railtie < ::Rails::Railtie
      if config.respond_to?(:app_generators)
        g = config.app_generators
      else
        g = config.generators
      end
      g.template_engine :admin_scaffold
      g.scaffold_controller :admin_scaffold_scaffold_controller
      g.helper :admin_scaffold_helper
      g.stylesheets :admin_scaffold_stylesheets
    end
  end
end
