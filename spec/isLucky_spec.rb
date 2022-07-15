
require './lib/isLucky.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        n = 1230
        expect(@challenge.solution(n)).to eq (true)
    end 

    it 'test 2' do 
        n = 239017
        expect(@challenge.solution(n)).to eq (false)
    end 

    it 'test 3' do 
        n = 134008
        expect(@challenge.solution(n)).to eq (true)
    end 

    it 'test 4' do 
        n = 10
        expect(@challenge.solution(n)).to eq (false)
    end 

    it 'test 5' do 
        n = 11
        expect(@challenge.solution(n)).to eq (true)
    end 

    it 'test 6' do 
        n = 1010
        expect(@challenge.solution(n)).to eq (true)
    end 

    it 'test 7' do 
        n = 261534
        expect(@challenge.solution(n)).to eq (false)
    end 

    it 'test 8' do 
        n = 100000
        expect(@challenge.solution(n)).to eq (false)
    end 

    it 'test 9' do 
        n = 999999
        expect(@challenge.solution(n)).to eq (true)
    end 

    it 'test 10' do 
        n = 123321
        expect(@challenge.solution(n)).to eq (true)
    end 
end 