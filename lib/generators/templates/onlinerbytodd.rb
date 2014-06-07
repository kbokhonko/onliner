require "redis"

if ( Rails.env.development? || Rails.env.test? )
	uri = URI.parse("localhost:6379")
else
	uri = URI.parse(ENV["REDISTOGO_URL"])
end

REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)