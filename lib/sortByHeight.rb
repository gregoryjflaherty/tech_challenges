# Some people are standing in a row in a park. 
# There are trees between them which cannot be moved. 
# Your task is to rearrange the people by their heights in a 
# non-descending order without moving the trees. 
# People can be very tall!

# Example

# For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
# solution(a) = [-1, 150, 160, 170, -1, -1, 180, 190].


# empty array for people 
#empty array for indexes
# iterate through array if it is a person add person to person array 
# and add index to index array
# order the people array 



class Challenge
    def solution(a)
        people = []
        indexes = []
        a.each_with_index do |object, idx|
            if object != -1
                people << object
                indexes << idx
            end 
        end
        people.sort!
        people.each_with_index do |person, idx|
            a[indexes[idx]] = person     
        end 
        a
    end
end 
