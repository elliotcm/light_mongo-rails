require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "light_mongo-rails"
    gem.summary = "Rails 3 integration for LightMongo"
    gem.description = "LightMongo-Rails provides an interface between the LightMongo::Document and the Rails 3 ActionPack."
    gem.email = "elliot.cm@gmail.com"
    gem.homepage = "http://github.com/elliotcm/light_mongo-rails"
    gem.authors = ["Elliot Crosby-McCullough"]
    gem.add_development_dependency "rspec", ">= 1.3.0"
  end
  Jeweler::GemcutterTasks.new

  task :spec => :check_dependencies
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.spec_opts = ['--color']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
  spec.spec_opts = ['--color']
end


task :default => :spec
