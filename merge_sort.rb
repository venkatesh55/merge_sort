def sort(arr)
  return arr if arr.length == 1

  mid = arr.length/2
  left_arr = arr.take(mid)
  right_arr = arr.drop(mid)

  sorted_left_arr = sort(left_arr)
  sorted_right_arr = sort(right_arr)

  merge(sorted_left_arr, sorted_right_arr)
end

def merge(left_arr, right_arr)
  return left_arr if right_arr.empty?
  
  return right_arr if left_arr.empty?

  if left_arr.first <= right_arr.first
    [left_arr.first] + merge(left_arr[1..left_arr.length], right_arr)
  else
    [right_arr.first] + merge(left_arr, right_arr[1..right_arr.length])
  end
end
