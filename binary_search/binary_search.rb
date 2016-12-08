require 'pry'

def binary_search(obj, arr)
mid = arr.length/2
left = arr[0..arr[(mid-1)]]
right = arr[(mid+1)..-1]
 # binding.pry
  if obj == arr[mid]
     return mid
  else
     nil
  end

  if obj == arr[0]
    return 0
  elsif obj < arr[mid]
    binary_search(obj,left)
  elsif
    obj > arr[mid]
    binary_search(obj,right)
  else
    nil
  end
end

# p binary_search(9, [1,2,3,4,5,6,7,8,9,10])
# p binary_search(8, [1,2,3,4,5,6,7,8,9,10])
p binary_search(7, [1,2,3,4,5,6,7,8,9,10])
# p binary_search(6, [1,2,3,4,5,6,7,8,9,10])
# p binary_search(5, [1,2,3,4,5,6,7,8,9,10])
# p binary_search(4, [1,2,3,4,5,6,7,8,9,10])
# p binary_search(11, [1,2,3,4,5,6,7,8,9,10])