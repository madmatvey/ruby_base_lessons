def bubble_sort(arr_to_sort)
	 n = arr_to_sort.length
  loop do
    swapped = false

    (n-1).times do |i|
      if arr_to_sort[i] > arr_to_sort[i+1]
        arr_to_sort[i], arr_to_sort[i+1] = arr_to_sort[i+1], arr_to_sort[i]
        swapped = true
      end
    end

    break if not swapped
  end

  arr_to_sort
end 