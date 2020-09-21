def merge_sort(array)
  if array.length <= 1
    array
  else
    left = merge_sort(array.each_slice((array.size / 2.0).round).to_a[0])
    right = merge_sort(array.each_slice((array.size / 2.0).round).to_a[1])
    sort(left, right)
  end
end

def sort(left, right)
  return right if left.empty?
  return left if right.empty?
  return [right[0]] + sort(right[1..-1], left) if right[0] <= left[0]

  [left[0]] + sort(right, left[1..-1])
end

print merge_sort([2, 3, 1, 4])
