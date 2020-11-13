# frozen_string_literal: true

# bubble_sort
def bubble_sort(array)
  iterations = 0
  loop do
    array_changed = false
    (array.length - 1).times do |index|
      if (array[index] <=> array[index + 1]) == 1
        array[index], array[index + 1] = array[index + 1], array[index]
        array_changed = true
      end
    end
    iterations += 1
    break unless array_changed
  end
  array
end

arr1 = [1, 2, 3, 4, 5, 9, 8, 7, 6]
p bubble_sort(arr1)

# bubble_sort_by
def bubble_sort_by(arr)
  iterations = 0
  loop do
    arr_changed = false
    (arr.length - 1).times do |index|
      if yield(arr[index], arr[index + 1]).positive?
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        arr_changed = true
      end
    end
    iterations += 1
    break if arr_changed == false
  end
  arr
end

arr2 = bubble_sort_by(%w[hey hello hi]) do |left, right|
  left.length - right.length
end

p arr2
