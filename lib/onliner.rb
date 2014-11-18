require "onliner/version"

unless defined?(Devise)
  require 'devise'
end

require 'onliner'

Devise.add_module :onliner, :model => 'onliner/model'

module Onliner
end

