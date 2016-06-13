require "spec_helper"
require "zombie"

#give Class
describe Zombie do 

# 寫example 
	it "is named Class_Ash" do
	zombie = Zombie.new 
	zombie.name.should == "Ash"
    end
end

