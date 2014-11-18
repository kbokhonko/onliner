require "rails"

module Onliner
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)

    def copy_files
      create_file "config/initializers/onliner.rb"
      copy_file "onliner.rb", "config/initializers/onliner.rb"
    end
  end
end