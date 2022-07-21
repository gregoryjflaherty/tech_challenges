class Challenge 
def solution(nums)
        output = []
        used_hash = Hash.new([])
        nums.sort.each_with_index do |num, idx|
            idx_2 = -1
            idx_2 -= idx
            target = 0 - (nums[idx] + nums[idx_2])
            require 'pry'; binding.pry
            if nums.sort[idx..idx_2].include?(target) && !used_hash.keys.include?(target) && !used_hash[target].include?(nums.index(target))
                output << [nums[idx], target, nums[idx_2]].sort!
                used_hash[target] << nums.index(target)
            end
        end
        output
    end
end