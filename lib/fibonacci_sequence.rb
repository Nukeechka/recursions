# frozen_string_literal: true

def fibs(num) # rubocop:disable Metrics/MethodLength
  arr = [0]
  return arr if num.zero?

  arr = [0, 1]
  return arr if num == 1

  i = 2
  while num >= 0
    result = arr[i - 1] + arr[i - 2]
    arr << result
    num -= 1
    i += 1
  end
  arr
end

def fibs_rec(num)
  return 0 if num.zero?

  return 1 if num == 1

  fibs_rec(num - 1) + fibs_rec(num - 2)
end
