class Challenge

    def initialize
        @inventory_hash = {
            Tor: {J: 5}, 
            Van: {J: 10, H: 2, S: 6}, 
            Mon: {J: 3, H: 5, S: 5}, 
            Cal: {J: 1, H: 18, S: 2}, 
            Hali: {J: 28, H: 2, S: 12}, 
        }
    end


    def method(order_hash)
        capable = []
        @inventory_hash.each_pair do |key, value|
            if (order_hash.keys - value.keys).empty?
                remaining = {}
                remaining.merge(value, order_hash) do |key2, old_v, new_v|
                    if (old_v - new_v).negative? 
                        break
                    else 
                        capable << key.to_s
                    end  
                end 
            end 
        end
        capable.uniq!.join(", ")
    end 
end 