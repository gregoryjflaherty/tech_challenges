require './lib/pascals_triangle.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    xit 'tests one' do 
        expect(@challenge.method(1)).to eq ([1])
    end 
    
    xit 'tests two' do 
        expect(@challenge.method(2)).to eq ([1,1,1])
    end 
    
    it 'tests three' do 
        expect(@challenge.method(4)).to eq ([1,1,1,1,2,1,1,3,3,1])
    end 
    
    xit 'tests four' do 
        expect(@challenge.method(6)).to eq ([1,1,1,1,2,1,1,3,3,1,1,4,6,4,1,1,5,10,10,5,1])
    end 
end 