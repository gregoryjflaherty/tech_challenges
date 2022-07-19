# Given a rectangular matrix of characters, 
# add a border of asterisks(*) to it.

# Example

# For

# picture = ["abc",
#            "ded"]
# the output should be

# solution(picture) = ["*****",
#                       "*abc*",
#                       "*ded*",
#                       "*****"]


class Challenge
    def solution(picture)
        core = picture.map do |row|
            row.prepend("*")
            row << "*"
        end
        border = "*" * core[0].length 
        core.unshift(border)
        core.push(border)
    end
end 