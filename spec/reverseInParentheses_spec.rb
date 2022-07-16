
require './lib/reverseInParentheses.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        input_string = "(bar)"
        expect(@challenge.solution(input_string)).to eq ("rab")
    end 

    it 'test 2' do 
        input_string = "foo(bar)baz"
        expect(@challenge.solution(input_string)).to eq ("foorabbaz")
    end 

    it 'test 3' do 
        input_string = "foo(bar)baz(blim)"
        expect(@challenge.solution(input_string)).to eq ("foorabbazmilb")
    end 

    it 'test 4' do 
        input_string = "foo(bar(baz))blim"
        expect(@challenge.solution(input_string)).to eq ("foobazrabblim")
    end 

    it 'test 5' do 
        input_string = ""
        expect(@challenge.solution(input_string)).to eq ("")
    end 

    it 'test 6' do 
        input_string = "()"
        expect(@challenge.solution(input_string)).to eq ("")
    end 

    it 'test 7' do 
        input_string = "(abc)d(efg)"
        expect(@challenge.solution(input_string)).to eq ("cbadgfe")
    end 
end 