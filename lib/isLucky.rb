# Ticket numbers usually consist of an even number of digits. A ticket number 
# is considered lucky if the sum of the first half of the digits is equal to the 
# sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

# Example

# For n = 1230, the output should be
# solution(n) = true;
# For n = 239017, the output should be
# solution(n) = false.


# turn integer into string 
# split string into array
# check length and then split at half way point
# turn into an arrays of integers
# sum both arrays 
# check if equal


class Challenge
    def solution(n)
        string_array = n.to_s.split("")
        split_mark = (string_array.length / 2 )
        first_hlf = string_array[0..(split_mark - 1)]
        second_hlf = string_array[split_mark..- 1]
        
        first_num = first_hlf.sum {|num| num.to_i}
        second_num = second_hlf.sum {|num| num.to_i}
        
        first_num == second_num ? true : false
    end
end 
