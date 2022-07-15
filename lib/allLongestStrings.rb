# Given an array of strings, return another array containing all of its longest strings.

# Example

# For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
# solution(inputArray) = ["aba", "vcd", "aba"].

#PSEUDOCODE
# iterate through and make a hash 
# length of string as the key, with an array of strings as the value 
# check and see what is the largest key value 
# provide the value of that key 

class Challenge
    def solution(inputArray)
        length_hash = inputArray.reduce({}) do |hsh, string|
            if hsh[string.length].nil?
                hsh[string.length] = []
                hsh[string.length] << string 
            else 
                hsh[string.length] << string 
            end
            hsh
        end
        max_length = length_hash.keys.max 
        length_hash[max_length]
    end
end 