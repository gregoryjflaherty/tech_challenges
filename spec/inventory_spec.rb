require './lib/inventory.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'tests one' do 
        order_hash = {J: 3, H: 2, S: 1 }
        expect(@challenge.method(order_hash)).to eq ('Van, Mon, Hali')
    end 
    
    it 'tests two' do 
        order_hash = { H: 7, S: 1 }
        expect(@challenge.method(order_hash)).to eq ('Cal')
    end 
end 