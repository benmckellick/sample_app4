class User < ActiveRecord::Base
	def has_many :tweets
	end
end
