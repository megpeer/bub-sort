def bubble_sort(array)
  array_size = array.length
  return array if array_size <= 1

  loop do
    # set swap counter to true
    swap_counter = true

    # repeat until swap counter is true
    while swap_counter == true
      # reset swap counter to false
      swap_counter = false
      # repeat loop as many times as the array length
      (array_size - 1).times do |i|
        #   look at each ajacent pair
        #     if two ajacent elements are not in order, swap them and add one to the swap counter.
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swap_counter = true
        end
      end
    end
    # stop looping once swap counter is no longer being flipped (aka eveything's been sorted)
    break if swap_counter == false
  end
  puts array
end

bubble_sort([4, 3, 78, 2, 0, 2])
