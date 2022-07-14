require './lib/daily_price.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'tests one' do 
        order_array = [["10212021", popcorn], ["10222021", popcorn], ["10212021", soda],["10212021", popcorn],["10212021", soda]]
        expect(@challenge.return_total(order_array)).to eq (26)
    end 
end 

# Question was that there are inputs  array of the format ["date, item"] . 
# eg: intput[["10212021", popcorn], ["10222021", popcorn], ["10212021", soda],["10212021", popcorn],["10212021", soda]]

# on the same day if there are popcorn and soda both purchased,
#  then it costs 9 dollars as a bundled price. 
# else soda is 2.5 dollars, popcorn is 8 dollars. 

# you need to calculate the total price based on these criteria and return that as output