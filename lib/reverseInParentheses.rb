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

 



class Challenge
    def solution(inputString)
        split_string = inputString.split("")
        collector = false
        output = ""
        reverse = ""
        inputString.each do |char|
            if collector == false && (char != "(" || char !- ")") 
                output << char
            elsif collector == true
                reverse << char
            elsif char = "(" && collector == false
                collector = true
            elsif char = "(" 
                collector = true
            end
        end 
    end 
end 
