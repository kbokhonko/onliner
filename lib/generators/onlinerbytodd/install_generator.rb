require "rails"

module Onlinerbytodd
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)

    def copy_files
      create_file "config/initializers/onlinerbytodd.rb"
      copy_file "onlinerbytodd.rb", "config/initializers/onlinerbytodd.rb"
    end
  end
end