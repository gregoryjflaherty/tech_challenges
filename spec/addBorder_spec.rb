require './lib/addBorder.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        picture = ["abc", "ded"]
        expected = ["*****", "*abc*", "*ded*", "*****"]
        expect(@challenge.solution(picture)).to eq (expected)
    end 

    it 'test 2' do 
        picture = ["a"]
        expected = ["***", "*a*", "***"]
        expect(@challenge.solution(picture)).to eq (expected)
    end 

    it 'test 3' do 
        picture = ["aa", "**", "zz"]
        expected = ["****", "*aa*", "****", "*zz*", "****"]

        expect(@challenge.solution(picture)).to eq (expected)
    end 

    it 'test 4' do 
        picture = ["abcde", "fghij", "klmno", "pqrst", "uvwxy"]
        expected = ["*******", "*abcde*", "*fghij*", "*klmno*","*pqrst*", 
                    "*uvwxy*", "*******"]
        expect(@challenge.solution(picture)).to eq (expected)
    end 

    it 'test 5' do 
        picture = ["wzy**"]
        expected = ["*******", "*wzy***", "*******"]
        expect(@challenge.solution(picture)).to eq (expected)
    end 
end 