# bubble_sort
def bubble_sort(array)
  iterations = 0
  
   loop do
      array_changed = false
      (array.length-1).times do |index|
        if (array[index] <=> array[index+1]) == 1
          array[index], array[index+1] = array[index+1], array[index]
          array_changed = true 
        end
      end
      iterations += 1
      break if !array_changed
    end
  array
end

array = [1,2,3,4,5,9,8,7,6]
p bubble_sort(array)

# bubble_sort_by
