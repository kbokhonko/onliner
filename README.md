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
It now works with RedisToGo on Heroku, it needed the password to be parsed,
now it is.

Tasks for future versions:

	[] Allow users to customize the time for a user to be considered online
		[] Make the onliner.rb accept a variable for the time
		[] Make that variable default to 15 seconds if not set
		[] Provide instructions for how a user can override the default
	[] Have software ignore Redis errors so if this gem doesn't work it doesn't break the app
		[] Add an exception for if REDIS isn't set or is unreachable
		[] Have onliner notify the user (either a flash message or an e-mail)
		[] make that notification message alterable (and the destination alterable)
		
		* This is mainly because if you hit your limit for your current RedisToGo plan or other applicable plan it would currently break the whole app
		* If we have this gem send the user an e-mail or something, or set a flash message, then the user can know what is going on and can fix it

## Requirement

  * Redis; this gem will make sure the dependencies get installed but you have 
  	to make sure you have it on your server, for Heroku I recommend RedisToGo.
  
  * Devise;
