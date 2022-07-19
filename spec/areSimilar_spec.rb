
require './lib/areSimilar.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        a = [1, 2, 3]
        b = [1, 2, 3]
        expected = true
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 2' do 
        a =  [1, 2, 3]
        b = [2, 1, 3]
        expected = true
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 3' do 
        a = [1, 2, 2]
        b = [2, 1, 1]
        expected = false
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 4' do 
        a =  [1, 2, 1, 2]
        b = [2, 2, 1, 1]
        expected = true
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 5' do 
        a = [1, 2, 1, 2, 2, 1]
        b = [2, 2, 1, 1, 2, 1]
        expected = true
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 6' do 
        a = [1, 1, 4]
        b = [1, 2, 3]
        expected = false
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 7' do 
        a = [1, 2, 3]
        b = [1, 10, 2]
        expected = false
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 8' do 
        a = [2, 3, 1]
        b = [1, 3, 2]
        expected = true
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 9' do 
        a = [2, 3, 9]
        b = [10, 3, 2]
        expected = false
        expect(@challenge.solution(a, b)).to eq (expected)
    end 

    it 'test 10' do 
        a = [832, 998, 148, 570, 533, 561, 894, 147, 455, 279]
        b = [832, 570, 148, 998, 533, 561, 455, 147, 894, 279]
        expected = false
        expect(@challenge.solution(a, b)).to eq (expected)
    end 
end 