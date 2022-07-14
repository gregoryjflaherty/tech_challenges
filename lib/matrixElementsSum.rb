# empty array to store added values
# empty array for skipped indexes
# iterate through floors, using an index and each cons
# when we have a zero save the index to empty array 
# within next array put value in sum_array unless index is in index_array 
# add sum_array


class Challenge
    def solution(matrix)
        sum_array = []
        sum_array << matrix[0]
        index_array = []
        matrix.each_cons(2) do |upper, lower|
            upper.each_with_index do |num, idx|
                if num == 0
                    index_array << idx
                end
            end
            lower.each_with_index do |num, idx|
                if index_array.include?(idx)
                    next
                else 
                    sum_array << num
                end 
            end
        end
        sum_array.flatten.sum 
    end
end 