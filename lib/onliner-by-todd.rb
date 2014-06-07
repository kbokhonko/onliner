require "onliner-by-todd/version"

unless defined?(Devise)
  require 'devise'
end

require 'onliner-by-todd'

Devise.add_module :onlinerbytodd, :model => 'onliner-by-todd/model'

module Onlinerbytodd
end

