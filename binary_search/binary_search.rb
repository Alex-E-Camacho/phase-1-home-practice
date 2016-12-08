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

  if obj < arr[mid]
    binary_search(obj,left)
  elsif
    obj > arr[mid]
    binary_search(obj,right)

  else
    nil
  end
end

p binary_search(4, [1,2,3,4,5,6,7,8,9,10])