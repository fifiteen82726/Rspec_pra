


class Zombie < ActiveRecord::Base 
	
	validates :name, presence: true

	attr_accessor :name, :brain
	def initialize
		@name = 'Ash'
		@brain = 0
	end

	def hungry?
		true
	end
end