require "onliner-by-todd/version"

unless defined?(Devise)
  require 'devise'
end

require 'onliner-by-todd'

Devise.add_module :onlinerbytodd, :model => 'onlinerbytodd/model'

module OnlinerByTodd
end

