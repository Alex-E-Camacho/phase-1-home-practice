def binary_search(obj, arr)
mid = arr.length/2
left = [arr[0]..arr[mid -1]]
right = [arr[mid+1]..arr[-1]]

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