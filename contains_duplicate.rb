# Given an integer array nums, return true if any value appears at least twice in the array,
# and return false if every element is distinct.

# Example 1:
# Input: nums = [1,2,3,1]
# Output: true

# Example 2:
# Input: nums = [1,2,3,4]
# Output: false

# Example 3:
# Input: nums = [1,1,1,3,3,4,3,2,4,2]
# Output: true

# @param {Integer[]} nums
# @return {Boolean}

def contains_duplicate(nums)
  # create boolean
  has_duplicate = false
  # create a hash
  integer_count = {}

  # iterate through array
  nums.each do |num|
    # if integer exists, return true
    # return has_duplicate = true if integer_count[num] == 1
    return has_duplicate = true if integer_count[num]

    # add integer as a key to a hash, with value 1
    integer_count[num] ||= 1
  end

  # return boolean
  has_duplicate
end

# runtime: 117ms, Beats 43.74% of users with Ruby
