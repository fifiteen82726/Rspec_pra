require "spec_helper"
require "zombie"

#give Class
describe Zombie do 

# 寫example 
	it "is named Class_Ash" do
	zombie = Zombie.new 
	#zombie.name.should == "Ash"
	expect(zombie.name).to eq "Ash"
    end


    it "is there brain?" do
    zombie = Zombie.new
    zombie.brain.should < 1
    end


    it 'is hungry' do 
    	zombie = Zombie.new
    	zombie.should be_hungry
    	# = zombie.hugry?.should ==true
    end

end

