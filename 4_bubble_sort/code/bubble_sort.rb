def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    array.each_index do |idx|
      next if array.size - 1 == idx # handle last index

      item_a = array[idx]
      item_b = array[idx + 1]
      next unless item_a > item_b

      array[idx] = item_b
      array[idx + 1] = item_a
      sorted = false # we had to make a swap, so it is not sorted
    end
  end

  array
end
