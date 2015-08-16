def merge(arr)

  def combine(left,right)
    a = []
    l, r = 0, 0

    loop do
      break if l >= left.length && r >= right.length

      if r >= right.length || (l < left.length && left[l] < right[r])
        a << left[l]
        l += 1
      else
        a << right[r]
        r += 1
      end
    end
    
    a
  end

  def seperation(a)
    return a if a.length <= 1

    mid   = a.length/2 - 1
    left  = seperation(a[0..mid])
    right = seperation(a[mid+1..-1])
    combine(left,right)
  end

  seperation(arr)
end

arr = [1,4,3,5,2]
puts merge(arr)
