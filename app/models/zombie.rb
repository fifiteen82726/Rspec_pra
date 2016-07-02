class Zombie < ActiveRecord::Base
	validates :name, presence: true
	has_many :tweets
	

	# attr_accessor :h

	after_initialize do |z|
    	@h = true
  	end


	def hungry?
    	@h
	end


	def hungry!
		@h = true
	end

	def eat(brains)
		@h = false
	end
end
