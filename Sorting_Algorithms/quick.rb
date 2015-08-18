def quick(arr, from, to)
  return if from >= to
  pivot = arr[from]
  i = from
  for j in 1+from..to
    if arr[j] < pivot
      arr.insert(i,arr[j])
      arr.delete_at(j+1)
      i += 1
    end
  end
  quick(arr, from, i-1)
  quick(arr, i+1, to)
end

a = [2,4,1,5,3,2,6,4,8,9,1,0]
quick(a, 0, a.length-1)
puts a
