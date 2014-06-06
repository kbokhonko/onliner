# Onliner


Gem for Rails application - provides you list of online users (for authentication gem 'devise')

## Installation

Add this line to your application's Gemfile:

    gem 'onliner'

And then execute:

    $ bundle

Next you have to run this to make it install the initializer

    $ rails g onliner:install 

## Usage

For using functionality add to ApplicationControler:

	before_filter { |c| current_user.track unless current_user.nil?}

and In your model, add :onliner to the current devise line at the end:

	class User < ActiveRecord::Base
		devise ..., :onliner
	end

Helper for online users list (for the whole list, not just an individual):

	Model.online, e.g. User.online, Admin.online

To see if a user is online you would run something like this:

	User.online.include?(user)

In this version I have modified the time to consider a user still online to 
15 seconds, previously it was 300 seconds.  In a future version I will make
this more easily customizable by users.

I have also modified the code to work more easily with RedisToGo on Heroku.

## Requirement

  * Redis; this gem will make sure the dependencies get installed but you have 
  	to make sure you have it on your server, for Heroku I recommend RedisToGo.
  
  * Devise;