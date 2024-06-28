def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    array.each_index do |idx|
      next if array.size - 1 == idx # handly last item in array

      item_a = array[idx]
      item_b = array[idx + 1]
      next unless item_a > item_b

      array[idx] = item_b
      array[idx + 1] = item_a
      sorted = false # we had to make a swap, so the array is not sorted
    end
  end

  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
