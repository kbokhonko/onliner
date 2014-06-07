require "rails"

module OnlinerByTodd
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../templates', __FILE__)

    def copy_files
      create_file "config/initializers/onliner-by-todd.rb"
      copy_file "onliner-by-todd.rb", "config/initializers/onliner-by-todd.rb"
    end
  end
end