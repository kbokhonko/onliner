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

		include Onliner
  	
  	before_filter { |c| c.track_user current_user unless current_user.nil?} 

Helper for online users list:

 		online_users

## Requirement

  * Redis;
  
  * Devise;
