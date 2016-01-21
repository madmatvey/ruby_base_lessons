require "stock_picker.rb"

describe "#stock_picker" do
	it "select example prices" do
		s = stock_picker([17,3,6,9,15,8,6,1,10])
		s.should == [1,4]
	end

end