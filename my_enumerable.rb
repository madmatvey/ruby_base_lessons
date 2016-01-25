module Enumerable
	def my_each
    for i in self
      yield(i)  
    end
  end

 def my_each_with_index
    for i in self
      index = 0	
      yield(i, index+=1)
    end
  end

  def my_map(&block)
  	out = []
  	self.my_each {|x| out << block.call(x)}
  	out
  end

  def my_select 
    out = []
    self.my_each {|x| out << x if yield(x)}
    out
  end

  def my_all?
  	count = 0
    self.my_each {|x| count+=1 if yield(x)}
    count == self.size
  end

  def my_any?
  	count = 0
    self.my_each {|x| count+=1 if yield(x)}
    count > 0
  end

  def my_none?
  	count = 0
    self.my_each {|x| count+=1 if yield(x)}
    count == 0
  end

  def my_count(num=nil)
    count = 0
    if block_given? && num.nil?
      self.my_each {|x| count+=1 if yield(x)}
    else
      self.my_each {|x| count+=1 if x == num}
    end
    count
  end

  def my_inject(*n)
    n.empty? ? n = self.first : n = n[0] 
    self.my_each {|x| n = yield(n,x)}
    n
  end 





  
=begin
	def my_each
    	if self.instance_of?(Array)
      		i = 0
      		while i < self.size
          		yield(self[i])
          		i += 1
      		end
      	self
    	elsif self.instance_of?(Hash)
      		i = 0
      		arr = self.to_a
      		while i < arr.size
        	  	yield(arr[i][0], arr[i][1])
          		i += 1
      		end
      		self
    	end
 	end
=end
end