class User
	def self.online_users array
    array_temp = []
    array_ids = []
    array.each do |a|
      array_temp << eval(a)
    end
    array_temp.each do |f|
      array_ids << f.keys.first if (Time.now - f.values.first.to_time <= 300)
    end
    User.where({ "id" => { "$in" => array_ids}}).to_a
  end
end