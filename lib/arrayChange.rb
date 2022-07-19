# You are given an array of integers. 
# On each move you are allowed to increase exactly
#  one of its element by one. 
#  Find the minimal number of moves required to obtain a 
#  strictly increasing sequence from the input.

# Example

# For inputArray = [1, 1, 1], the output should be
# solution(inputArray) = 3.


# create empty counter called moves
# go through each cons element
# if first element is larger then second
    # subtract second element from first - add 1- add to moves 
    # assign second element to that number


class Challenge
    def solution(inputArray)
        moves = 0
        inputArray.each_with_index do |i, idx|
            if !inputArray[idx + 1].nil? && inputArray[idx] >= inputArray[idx + 1]  
                current_move = (inputArray[idx] - inputArray[idx + 1] + 1)
                moves += current_move
                inputArray[idx + 1] += current_move
            end 
        end 
        moves
    end
end 