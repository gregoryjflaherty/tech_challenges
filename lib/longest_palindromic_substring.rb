# Given a string s, return the longest palindromic substring in s.

# check each consecutive via each_with_index
# start with two and increase until there is no palindrome
# put into hash with length as key
# check max key
# get first value   




class Challenge
    def solution(s)
        palindromes = []
        split_string = s.split("")
        n = 1
        until (n + 1) == split_string.length do 
            split_string.each_with_index do |letter, idx|
                idx_2 = (idx + n)
                substring = split_string[idx..idx_2].join("")
                if substring == substring.reverse
                    palindromes << substring
                end 
            end
            n += 1 
        end 
        palindromes.max_by {|string| string.length}
    end
end 
