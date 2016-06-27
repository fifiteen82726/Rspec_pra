class Zombie < ActiveRecord::Base
	#attr_accessor :name

	
	validates :name, presence: true
	has_many :tweets


	# def initialize
	# 	@name = 'Ash'
	# end


	def hungry?
    	true
	end


end
