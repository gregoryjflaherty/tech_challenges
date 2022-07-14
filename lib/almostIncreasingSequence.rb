#go through each element 
# make a clone of array without  that element
# see if that clone is strinctly increasing sequence by doing each cons 
# if it is then true 

class Challenge
    def solution(sequence)
        sequence.each_with_index do |num, idx|
            replica = sequence.clone
            replica.slice!(idx)
            if replica.length == 1
                return true
            end 
            is_sequence = []
            replica.each_cons(2) do |x, y| 
                if x < y
                    is_sequence << true
                else
                    is_sequence << false 
                end 
            end 
            if !is_sequence.include?(false)
                
                return true
            end 
        end 
        return false 
    end
end 

# Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

# Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

# Example

# For sequence = [1, 3, 2, 1], the output should be
# solution(sequence) = false.

# There is no one element in this array that can be removed in order to get a strictly increasing sequence.

# For sequence = [1, 3, 2], the output should be
# solution(sequence) = true.

# You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

# Input/Output

# [execution time limit] 4 seconds (rb)

# [input] array.integer sequence

# Guaranteed constraints:
# 2 ≤ sequence.length ≤ 105,
# -105 ≤ sequence[i] ≤ 105.

# [output] boolean

# Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.