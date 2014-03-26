# Onliner


Gem for Rails application - provides you list of online users (for authentication gem 'devise')

## Installation

Add this line to your application's Gemfile:

    gem 'onliner'

And then execute:

    $ bundle

For installing gem to your app run:

    $ rails g onliner:install 

## Usage

For using functionality add to ApplicationControler:

	before_filter { |c| current_user.track unless current_user.nil?}

and In your model, add :lastseenable as such:

	class User < ActiveRecord::Base
		devise ..., :onliner
	end

Helper for online users list:

	Model.online, e.g. User.online, Admin.online

## Requirement

  * Redis;
  
  * Devise;
