require "bubble_sort.rb"

describe "#bubble_sort" do
	it "sort example array" do
		s = bubble_sort([4,3,78,2,0,2])
		s.should == [0,2,2,3,4,78]
	end

end

describe "#bubble_sort_by" do 
	it "sort example array with block given" do
		s = bubble_sort_by(["hi","hello","hey"]){|left,right| right.length - left.length }
		s.should == ["hi", "hey", "hello"]
	end
end