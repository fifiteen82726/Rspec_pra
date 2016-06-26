class Zombie < ActiveRecord::Base
	validates :name, presence: true
	has_many :tweets

	def hungry?
    	true
	end
end
