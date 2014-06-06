module Devise
  module Models
    module Onliner
      extend ActiveSupport::Concern

      module ClassMethods
        def online
          array_ids = []
          online_array = REDIS.hgetall "o_#{self.to_s.downcase.pluralize}"

          online_array.each do |k, v|
            if (Time.now - v.to_time <= 15)
              array_ids << k.to_i 
            end 
          end

          self.find( array_ids )
        end
      end      

      def track
        REDIS.mapped_hmset "o_#{self.class.to_s.downcase.pluralize}", { id.to_s => "#{Time.now}" }
      end
    end
  end
end
