def bubble_sort(arr_to_sort)
	bubble_sort_by(arr_to_sort){|left,right| right - left }
end 

def bubble_sort_by(arr_to_sort)
	n = arr_to_sort.length
	unless block_given? 
		return nil
	end
  loop do
    swapped = false

    (n-1).times do |i|
      if yield(arr_to_sort[i], arr_to_sort[i+1]) < 0
        arr_to_sort[i], arr_to_sort[i+1] = arr_to_sort[i+1], arr_to_sort[i]
        swapped = true
      end
    end

    break if not swapped
  end

  arr_to_sort
end