require "onlinerbytodd/version"

unless defined?(Devise)
  require 'devise'
end

require 'onlinerbytodd'

Devise.add_module :onlinerbytodd, :model => 'onlinerbytodd/model'

module Onlinerbytodd
end

