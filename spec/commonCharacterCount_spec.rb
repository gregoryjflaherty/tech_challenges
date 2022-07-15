
require './lib/commonCharacterCount.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        s1 = "aabcc"
        s2 = "adcaa"
        expected = 3
        expect(@challenge.solution(s1, s2)).to eq (expected)
    end 

    it 'test 2' do 
        s1 =  "zzzz"
        s2 = "zzzzzzz"
        expected = 4
        expect(@challenge.solution(s1, s2)).to eq (expected)
    end 

    it 'test 3' do 
        s1 =  "abca"
        s2 = "xyzbac"
        expected = 3
        expect(@challenge.solution(s1, s2)).to eq (expected)
    end 

    it 'test 4' do 
        s1 =  "a"
        s2 = "b"
        expected = 0
        expect(@challenge.solution(s1, s2)).to eq (expected)
    end 

    it 'test 5' do 
        s1 = "a"
        s2 = "aaa"
        expected = 1
        expect(@challenge.solution(s1, s2)).to eq (expected)
    end 
end 