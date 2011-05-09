require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "admin_scaffold"
  gem.homepage = "http://github.com/intrica/admin_scaffold"
  gem.license = "MIT"
  gem.summary = %Q{Scaffold generator that has search, sort, pagination and column ordering.}
  gem.description = %Q{This scaffold generator takes a lot of Ryan Bates' screencast ideas and puts them into scaffold generator.}
  gem.email = "david.monagle@intrica.com.au"
  gem.authors = ["David Monagle"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'simple_page', '> 3.0'
  gem.add_runtime_dependency 'simple_form', '>= 1.3.0'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "admin_scaffold #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
