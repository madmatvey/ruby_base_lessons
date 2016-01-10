require "caesar_cipher.rb"

describe "#caesar_cipher" do
	it "convert a simple word" do
		s = caesar_cipher('What', 5)
		s.should == "Bmfy"
	end

	it "convert a simple string" do
		s = caesar_cipher('What a string!', 5)
		s.should == "Bmfy f xywnsl!"
	end
end