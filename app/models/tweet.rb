class Tweet < ActiveRecord::Base
	belongs_to :user

	validates :content, length: {minimum: 4}
end
