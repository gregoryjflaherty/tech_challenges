# go through array to reach sub_arrays
# sub_array - [date, item]
# group_by date, values {bundle: , popcorn: , soda: }
# add price to counter = 0


class Challenge
    def initialize                

    end

    def return_total(order_array)
        count_items(order_array)
    end 
    
    def date_hash(order_array)
        date_hash = order_array.group_by {|order| order[0]}
        date_items = date_hash.transform_values do |v|
            v.map {|sale| sale[1]}
        end 
    end

    def count_items(order_array)
        counter = {bundle: 0, popcorn: 0, soda: 0}
        date_hash = date_hash(order_array)
        date_hash.each_pair do |key, value|
            puts value
        end 
    end 
end 



order_array = [["10212021", 'popcorn'], ["10222021", 'popcorn'], ["10212021", 'soda'],["10212021", 'popcorn'],["10212021", 'soda']]
@challenge = Challenge.new
puts @challenge.return_total(order_array)