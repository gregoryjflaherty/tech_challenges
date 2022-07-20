
require './lib/longest_palindromic_substring.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        s = "babad"
        expect(@challenge.solution(s)).to eq ("bab")
    end 

    it 'test 2' do 
        s = "cbbd"
        expect(@challenge.solution(s)).to eq ("bb")
    end 
end 