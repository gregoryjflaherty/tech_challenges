require './lib/sortByHeight.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        a = [-1, 150, 190, 170, -1, -1, 160, 180]
        expected = [-1, 150, 160, 170, -1, -1, 180, 190]
        expect(@challenge.solution(a)).to eq (expected)
    end 

    it 'test 2' do 
        a = [-1, -1, -1, -1, -1]
        expected = [-1, -1, -1, -1, -1]
        expect(@challenge.solution(a)).to eq (expected)
    end 

    it 'test 3' do 
        a = [-1]
        expected = [-1]
        expect(@challenge.solution(a)).to eq (expected)
    end 

    it 'test 4' do 
        a = [4, 2, 9, 11, 2, 16]
        expected = [2, 2, 4, 9, 11, 16]
        expect(@challenge.solution(a)).to eq (expected)
    end 

    it 'test 5' do 
        a = [2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]
        expected = [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2]
        expect(@challenge.solution(a)).to eq (expected)
    end 

    it 'test 6' do 
        a = [23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3]
        expected = [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77]
        expect(@challenge.solution(a)).to eq (expected)
    end 
end 