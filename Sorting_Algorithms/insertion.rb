def insertion(arr)
  for i in 1...arr.length-1
    for j in 0...i-1
      if arr[j]>arr[i]
        arr.insert(j,arr[i])
        arr.delete_at(i+1)
      end
    end
  end
  arr
end

arr = [1,3,5,2,4]
puts insertion(arr)
