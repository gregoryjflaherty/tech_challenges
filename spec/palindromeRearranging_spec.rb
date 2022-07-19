
require './lib/palindromeRearranging.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        input_string = "aabb"
        expect(@challenge.solution(input_string)).to eq (true)
    end 

    it 'test 2' do 
        input_string = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabc"
        expect(@challenge.solution(input_string)).to eq (false)
    end 

    it 'test 3' do 
        input_string = "abbcabb"
        expect(@challenge.solution(input_string)).to eq (true)
    end 

    it 'test 4' do 
        input_string = "zyyzzzzz"
        expect(@challenge.solution(input_string)).to eq (true)
    end 

    it 'test 5' do 
        input_string = "z"
        expect(@challenge.solution(input_string)).to eq (true)
    end 

    it 'test 6' do 
        input_string = "zaa"
        expect(@challenge.solution(input_string)).to eq (true)
    end 

    it 'test 7' do 
        input_string = "abca"
        expect(@challenge.solution(input_string)).to eq (false)
    end 

    it 'test 8' do 
        input_string = "abcad"
        expect(@challenge.solution(input_string)).to eq (false)
    end 

    it 'test 9' do 
        input_string = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbccccaaaaaaaaaaaaa"
        expect(@challenge.solution(input_string)).to eq (false)
    end 

    it 'test 10' do 
        input_string = "abdhuierf"
        expect(@challenge.solution(input_string)).to eq (false)
    end 

    it 'test 10' do 
        input_string = "aaaabbccccccddd"
        expect(@challenge.solution(input_string)).to eq (true)
    end 
end 