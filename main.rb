#!/usr/bin/env ruby

# frozen_string_literal: true

#
# Bubble sort and Bubble sort by
#
def bubble_sort(array)
  for i in (0...array.length-1)
    for i in (0...array.length-1)
      array[i], array[i + 1] = array[i + 1], array[i] if arr[i] < arr[i + 1]
    end
  end
  array
end

def bubble_sort_by(array)
  for i in (0...array.length - 1)
    for i in (0...array.length - 1)
      value = yield(array[i], array[i + 1])
      array[i], array[i + 1] = array[i + 1], array[i] if value.positive?
    end
  end
  array
end

p bubble_sort_by([4, 3, 78, 2, 0, 2]) { |left, right| left - right}
p bubble_sort_by([1, 1, -5, 3,-4, 5]) { |left, right| left <=> right }
p bubble_sort_by(["hi", "hello", "hey"]) { |left, right| left.length - right.length }
randomArray = 999.times.map{Random.rand(-99999..99999)}
p bubble_sort_by(randomArray) {|left, right| left <=> right } == randomArray.sort ? "Test 5: Passed" : "Test 5: Failed"
p bubble_sort_by([750, 500, 300, 200, 67, 54, 23, 56, 36, 45, 120, 100, 78, 4, 3, 2, 2, 0]) { |left, right| left - right}
p bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }
