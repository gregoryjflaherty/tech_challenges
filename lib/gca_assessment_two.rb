class Challenge
    def solution(queries)
        db = Hash.new({})
        return_array = []
        modification_hash = Hash.new(0)


        queries.each_with_index do |query_array, idx|
            if query_array[0][0] == "S"
                if db[query_array[1]] == {}
                    db[query_array[1]] = {query_array[2] => query_array[3]}
                    return_array << query_array[3]
                    modification_hash[[query_array[1]]] += 1
                else 
                    db[query_array[1]][query_array[2]] = (db[query_array[1]][query_array[2]].to_i + query_array[3].to_i).to_s
                    return_array << db[query_array[1]][query_array[2]]
                    modification_hash[[query_array[1]]] += 1
                end 
            elsif query_array[0][0] == "G"
                if db[query_array[1]][query_array[2]].nil?
                    return_array << ""
                else 
                    return_array << db[query_array[1]][query_array[2]]
                end
            elsif query_array[0][0] == "D"
                if db[query_array[1]] == {} || db[query_array[1]][query_array[2]].nil?
                    return_array << "false"
                else
                    db[query_array[1]].delete(query_array[2])
                    return_array << "true"
                    modification_hash.delete(query_array[1])
                end
            else 
                return_string = ""
                sorted = modification_hash.sort_by {|k, v| v}
                sorted.reverse!
                counter = 0
                num = query_array[1].to_i
                sorted.each do |array|
                    return_string << "#{array[0][0]}(#{array[1]}), "
                    counter += 1
                    if counter == num 
                        break 
                    end 
                end
                return_array << return_string[0..-3] 
            end 
        end 
        return_array    
    end
end 