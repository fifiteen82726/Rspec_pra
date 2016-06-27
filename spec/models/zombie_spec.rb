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
	tweet3 = Tweet.new(status: 'as222')
	zombie = Zombie.create(name: 'Ash', tweets:[tweet1,tweet2])
	zombie.tweets.should include(tweet1)
	zombie.tweets.should include(tweet2)  #check matching on an array
	#zombie.tweets.should include(tweet3)  #check matching on an array

	zombie.tweets.count.should == 2  ##檢查數量是否正確
	
	end 
end


#測試要跳出錯誤時 (to, not_to, to_not)
describe Zombie do
	it 'raise an error if save zombie without name' do 
	zombie = Zombie.new
	expect {zombie.save!}.to raise_error()
	end
end


# test model 繼承
describe Zombie do
it "hungry should be_kind_of Zombie" do
	hungry_zombie = HugryZombie.new
	hungry_zombie.should be_kind_of(Zombie)
	end
end


#satisfy{block}

describe Zombie do
	it "test is zombie hungry?" do
		zombie = Zombie.new
		zombie.should satisfy{|zombie| zombie.hungry?}
		#respond_to (method)
		#zombie.should respond_to(zombie.hungry?)
	end
end


describe Zombie do
	it "test respond_to" do
		zombie = Zombie.new
		expect(zombie).to respond_to(:hungry?) # pass if obj.respond_to?(:hungry)
		expect(subject).to respond_to(:hungry?) # 
		expect respond_to(:hungry?)
		#3種寫法， subject = zombie = Zombie.new
		#也可省略subject
	end
end

# 省略 it 的 string
describe Zombie do
	it {expect respond_to(:hungry?)}
end


describe Zombie do
	zombie = Zombie.new(:name => 'Ash')
	#it { expect(zombie.name).to eq 'Ash'}
end





