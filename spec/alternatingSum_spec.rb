require './lib/alternatingSum.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        input_array = [50, 60, 60, 45, 70]
        expect(@challenge.solution(input_array)).to eq ([180, 105])
    end 

    it 'test 2' do 
        input_array = [100, 50]
        expect(@challenge.solution(input_array)).to eq ([100, 50])
    end 

    it 'test 3' do 
        input_array = [80]
        expect(@challenge.solution(input_array)).to eq ([80, 0])
    end 

    it 'test 4' do 
        input_array = [100, 50, 50, 100]
        expect(@challenge.solution(input_array)).to eq ([150, 150])
    end 

    it 'test 5' do 
        input_array = [100, 51, 50, 100]
        expect(@challenge.solution(input_array)).to eq ([150, 151])
    end 
end 