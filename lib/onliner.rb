require "onliner/version"
require "devise"

module Onliner
  def online_users
    array_ids = []    
    online_array = REDIS.hgetall "online"

    online_array.each do |k, v|
      if (Time.now - v.to_time <= 300)
        array_ids << k.to_i 
      end 
    end

    User.find( array_ids )
  end

  def track_user user
    REDIS.mapped_hmset "online", { user.id.to_s => "#{Time.now}" }
  end
end
