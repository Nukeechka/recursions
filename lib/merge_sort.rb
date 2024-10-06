# frozen_string_literal: true

def merge(arr, left, mid, right) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
  it_one = 0
  it_two = 0
  result = []
  while left + it_one < mid && mid + it_two < right
    if arr[left + it_one] < arr[mid + it_two]
      result[it_one + it_two] = arr[left + it_one]
      it_one += 1
    else
      result[it_one + it_two] = arr[mid + it_two]
      it_two += 1
    end
  end
  while left + it_one < mid
    result[it_one + it_two] = arr[left + it_one]
    it_one += 1
  end
  while mid + it_two < right
    result[it_one + it_two] = arr[mid + it_two]
    it_two += 1
  end
  i = 0
  times = it_one + it_two
  times.times do
    arr[left + i] = result[i]
    i += 1
  end

  arr
end

def mergeSort(arr, left, right) # rubocop:disable Naming/MethodName
  return if left + 1 >= right

  mid = (left + right) / 2
  mergeSort(arr, left, mid)
  mergeSort(arr, mid, right)
  merge(arr, left, mid, right)
end

puts mergeSort([105, 79, 100, 110], 0, 4)
