import math
def missing_number(nums):
  # for ind,num in enumerate(nums):
  #   if ind == 0:
  #     prev = num
  #     continue
  #   if num-1 != prev:
  #     return num-1
  #   prev=num
  total = math.fsum([i for i in range(1,max(nums)+1)])
  nums_sum = math.fsum(nums)
  return total - nums_sum