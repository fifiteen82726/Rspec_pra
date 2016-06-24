require 'spec_helper'
require 'zombie'

describe Zombie do
it 'is invalid without a name' do
	zombie = Zombie.new 
	zombie.should_not be_valid
	end 	
end