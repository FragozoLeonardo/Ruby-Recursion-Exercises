def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = array[0...middle]
  right = array[middle..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []

  while !left.empty? && !right.empty?
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted.concat(left).concat(right)
end

# Test the method
arr = [5, 9, 1, 3, 2, 8, 4, 7, 6]
sorted_arr = merge_sort(arr)
puts sorted_arr.inspect
