class Challenge

# given a number (n) - which is how many rows are in the triangle
# create n number of arrays


# 1 is pushed and 1 is placed in front 
# use each cons of previous array to add next digit unless digit == 0 or -1 (those equal 1)
# push arrays in order to one large array 
# flatten array

def method(n)
    prev_array = []
    current_array = []
    final_array = []
        n.times do |i|
            array = Array.new(i + 1) do |idx|
                if idx == 0 || idx == i
                    idx = 1
                end                    
            end                
            prev_array = array
            if i == 0
                final_array << array               
            elsif prev_array != []
                
                prev_array.each_with_index do |num, idx|
                    # require 'pry' ; binding.pry
                    if idx == 0 || idx == (n - 1)
                        array.length == 2 ? final_array << prev_array : next
                    else 
                        # require 'pry' ; binding.pry
                    end 
                end 
            end  
        end
        final_array << prev_array                            
        require 'pry' ; binding.pry
        final_array.flatten!
    end 
    
end 


n = 3
final_array = []
prev_array = []

n.times do |i|
    array = Array.new(i + 1) do |idx|
        idx = 1        
    end 
    
    if array.length == 1 || array.length == 2
        final_array << array
        prev_array = array 
    else 
        array.each_with_index do |num, idx|
            if idx != 0 || idx != -1
                
            else 
                next
            end 
        end 
    end 

end 

print final_array
puts " "
print final_array.flatten!