# Write a function that reverses characters in (possibly nested) parentheses in the input string.

# Input strings will always be well-formed with matching ()s.

# Example

# For inputString = "(bar)", the output should be
# solution(inputString) = "rab";
# For inputString = "foo(bar)baz", the output should be
# solution(inputString) = "foorabbaz";
# For inputString = "foo(bar)baz(blim)", the output should be
# solution(inputString) = "foorabbazmilb";
# For inputString = "foo(bar(baz))blim", the output should be
# solution(inputString) = "foobazrabblim".
# Because "foo(bar(baz))blim" becomes "foo(barzab)blim" and then "foobazrabblim".

 

# Split string 
# Iterate through string 
# set a sub collector to collect substrings
# if not ( or ) and collecotr is false put into output 
# if it is one of these and collector is false set collector to true 
# if collector is true and not a parenthesis put into sub_collector 


class Challenge
    def solution(inputString)
        split_string = inputString.split("")
        collector = false
        output = ""
        reverse = ""
        sub_counter = 0
        inputString.each do |char|
            if collector == false && (char != "(" || char !- ")") 
                output << char
            elsif collector == true
                reverse << char
            elsif char = "(" && collector == false
                collector = true
            elsif char = "(" 
                collector = true
                sub_counter += 1
            end
        end 
    end 
end 
