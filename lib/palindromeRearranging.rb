# Given a string, find out if its characters can be rearranged to form a palindrome.

# Example

# For inputString = "aabb", the output should be
# solution(inputString) = true.

# We can rearrange "aabb" to make "abba", which is a palindrome.


# split string
# iterate over string and count number of char by putting them in a hash - key being char
    # value being how many times it appears
# check if any values are odd, if odd then false, else true 


class Challenge
    def solution(inputString)
        char_count = inputString.split("").reduce({}) do |hsh, char|
            if hsh[char].nil?
                hsh[char] = 1
            else 
                hsh[char] += 1
            end 
            hsh
        end
        odds = 0
        all_even = char_count.values.each do |value| 
            if value.odd?
                odds += 1
            end 
        end
        if odds <= 1
            true 
        else 
            false
        end 
    end 
end 