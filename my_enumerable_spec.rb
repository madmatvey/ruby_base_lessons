require "my_enumerable.rb"

describe "#my_each" do
	it "do the same as #each method" do
	arr = [1,2,3,4,5,6,7,8,9]
	sum = 0
	sum2 = 0 
	arr.each { |x| sum+=x }
	arr.my_each  { |x| sum2+=x }
	sum2.should == sum	
	end

	it "returns the same as #each method" do	
		arr = ["1","2","3","4","5","6","7","8","9"]
		sum = ""
		sum2 = ""
 		arr.my_each { |x| sum2+=x }.should == arr.each { |x| sum+=x }
	end

end