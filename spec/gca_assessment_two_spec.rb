require './lib/gca_assessment_two.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        input_array = [1, 2, 1, 3, 4]
        expected = [1, 1, 0]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 2' do 
        input_array = [1, 2, 3, 4]
        expected = [0, 0]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 3' do 
        input_array = ["abc", "eeee", "abcd",  "dcd"]
        expected = ["eeee", "abcd"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 4' do 
        input_array = ["a", "abc", "cbd", "zzzzzz", "a", "abcdef", "asasa","aaaaaa"]
        expected = ["zzzzzz", "abcdef", "aaaaaa"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 5' do 
        input_array = ["enyky", "benyky", "yely", "varennyky"]
        expected = ["varennyky"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 6' do 
        input_array = ["abacaba", "abacab", "abac", "xxxxxx"]
        expected = ["abacaba"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 7' do 
        input_array = ["young", "yooooooung", "hot", "or", "not", 
                        "come", "on", "fire", "water", "watermelon"]
        expected = ["yooooooung", "watermelon"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 8' do 
        input_array = ["onsfnib", "aokbcwthc", "jrfcw"]
        expected = ["aokbcwthc"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 9' do 
        input_array = ["lbgwyqkry"]
        expected = ["lbgwyqkry"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 10' do 
        input_array = ["i"]
        expected = ["i"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 
end 