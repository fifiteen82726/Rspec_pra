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



#practice refatory 

#before

describe Zombie do
	it "has no name" do	
		@zombie = Zombie.create
		#@zombie.name.should be_nil
		expect(@zombie.name).to eq  nil
	end

	it 'should not be hungry after eating' do 
		@zombie = Zombie.create 
		expect(@zombie).to be_invalid
		expect(@zombie).to be_hungry
    	@zombie.eat("eat")
    	expect(@zombie.hungry?).to be_falsey
    	# true => truthy , flase => falsey 
	end
end


#after 

describe Zombie do
	
	# refatory 	@zombie = Zombie.create
	let(:zombie){Zombie.create}
	subject { zombie }


	#省略一次
	it "has no name_refactory" do
		# subject.name.should be_nil
		expect(subject.name).to be_nil
	end
	#在省略一次
	it {expect(subject.name).to be_nil}


	#利用 expect, change 和 from ,to

	it "should not be hungry after eating_refactor" do
		expect {zombie.eat(:brains)}.to change {zombie.hungry?}.from(true).to(false)
	end

	
end


