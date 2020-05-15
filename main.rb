def bubble_sort_by (arr)
  for i in (0...arr.length-1)
   for i in (0...arr.length-1)
    if arr[i] < arr[i + 1]
      a = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = a
     end
    end
   end
 return arr
end


p bubble_sort_by ([750, 500, 300, 200, 67, 54, 23, 56, 36, 45, 120, 100, 78, 4, 3, 2, 2, 0])


p bubble_sort_by(["hi","hello","hey"]) do |left,right| left.length - right.length end


