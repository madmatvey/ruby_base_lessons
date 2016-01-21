require "bubble_sort.rb"

describe "#bubble_sort" do
	it "sort example array" do
		s = bubble_sort([4,3,78,2,0,2])
		s.should == [0,2,2,3,4,78]
	end

end