# Given an array nums containing n distinct numbers in the range [0, n],
# return the only number in the range that is missing from the array.

# Example 1:
# Input: nums = [3,0,1]
# Output: 2
# Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3].
# 2 is the missing number in the range since it does not appear in nums.

# Example 2:
# Input: nums = [0,1]
# Output: 2
# Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2].
# 2 is the missing number in the range since it does not appear in nums.

# Example 3:
# Input: nums = [9,6,4,2,3,5,7,0,1]
# Output: 8
# Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9].
# 8 is the missing number in the range since it does not appear in nums.

# @param {Integer[]} nums
# @return {Integer}
# def missing_number(nums)
#   # for loop
#   for i in 0..nums.length
#     # if nums does not include i, return i
#     return i if nums.include?(i) == false
#   end
# end

# runtime: 1636ms, Beats 9.26% of users with Ruby

# attempt 2

def missing_number(nums)
  # sum of all numbers in range
  x = nums.size
  sum = (x * (x + 1)) / 2
  # sum of all numbers in nums
  arr_sum = nums.sum
  # subtract
  sum - arr_sum
end

# runtime: 59ms, Beats 95.06% of users with Ruby
# memory: 212.32MB, Beats 61.73% of users with Ruby
