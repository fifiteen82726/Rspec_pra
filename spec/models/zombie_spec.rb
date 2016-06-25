require 'rails_helper'


describe Zombie do
it 'is invalid without a name' do
	zombie = Zombie.new 
	zombie.should_not be_valid
	end 	
end


describe Zombie do
it "Zombie has a name call 'Ash Clone #'" do
	zombie = Zombie.new(:name => 'Ash Clone 1')
	zombie.name.should match(/Ash Clone \d/) #regular express
	end
end


describe Zombie do
it 'Zombie include tweets' do 
	tweet1 = Tweet.new(status: 'hhasdasdasd')
	tweet2 = Tweet.new(status: 'asdasdasd')
	zombie = Zombie.new(name: 'Ash', tweets:[tweet1,tweet2])
	end 
end