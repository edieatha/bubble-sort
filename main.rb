#!/usr/bin/env ruby

# frozen_string_literal: true

#
# Bubble sort and Bubble sort by
#
def bubble_sort(array)
  for i in (0...array.length - 1)
    for i in (0...array.length - 1)
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] < array[i + 1]
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

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([1, 1, -5, 3, -4, 5])
p bubble_sort([750, 500, 300, 200, 67, 54, 23, 56, 36, 45, 120, 100, 2, 2, 0])

p bubble_sort_by([4, 3, 78, 2, 0, 2]) { |left, right| left - right }
p bubble_sort_by([1, 1, -5, 3, -4, 5]) { |left, right| left <=> right }
