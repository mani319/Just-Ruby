def bubble(arr)
  loop do
    flag = 0

    for j in 0...(arr.length - 1)
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        flag += 1
      end
    end

    break if flag == 0
  end
  arr
end

arr = [3,1,5,2,4]
puts bubble(arr)
