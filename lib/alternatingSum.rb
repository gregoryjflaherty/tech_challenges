# Several people are standing in a row and need to be divided into two teams. 
# The first person goes into team 1, the second goes into team 2, 
# the third goes into team 1 again, the fourth into team 2, and so on.

# You are given an array of positive integers - the weights of the people. 
# Return an array of two integers, where the first element is the total weight of team 1,
#  and the second element is the total weight of team 2 after the division is complete.

# Example

# For a = [50, 60, 60, 45, 70], the output should be
# solution(a) = [180, 105].

# Create a hash of teams with the keys being the team and the values being the sum of the weights
# Return an array of key ones value first then key twos value 


class Challenge
    def solution(a)
        team_weights = Hash.new(0)
        a.each_with_index do |weight, idx|
            if (idx + 1).odd?
                team_weights[1] += weight
            else
                team_weights[2] += weight
            end
        end
        [team_weights[1], team_weights[2]]
    end
end 