# Given two strings, find the number of common characters between them.

# Example

# For s1 = "aabcc" and s2 = "adcaa", the output should be
# solution(s1, s2) = 3.

# Strings have 3 common characters - 2 "a"s and 1 "c".

# have empty character counter
# split and iterate through s1 
# check if character is in s2
# if it is add to a counter


class Challenge
    def solution(s1, s2)
        s1_split = s1.split("")
        s2_split = s2.split("")
        counter = s1_split.reduce(0) do |sum, char|
            if s2_split.include?(char)
                sum += 1                
                index = s2_split.find_index(char)
                s2_split.slice!(index)
            end 
            sum
        end 
    end
end 

