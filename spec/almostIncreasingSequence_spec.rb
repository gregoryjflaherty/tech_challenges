require './lib/almostIncreasingSequence.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        sequence = [1, 3, 2]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 2' do 
        sequence = [1, 1]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 3' do 
        sequence = [1, 2, 5, 3, 5]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 4' do 
        sequence = [1, 2, 3, 4, 3, 6]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 5' do 
        sequence =[1, 2, 3, 4, 99, 5, 6]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 6' do 
        sequence = [3, 5, 67, 98, 3]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 7' do 
        sequence = [1, 3, 2, 1]
        expect(@challenge.solution(sequence)).to eq (false)
    end 

    it 'test 8' do 
        sequence = [10, 1, 2, 3, 4, 5]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 9' do 
        sequence = [1, 1]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 10' do 
        sequence = [123, -17, -5, 1, 2, 3, 12, 43, 45]
        expect(@challenge.solution(sequence)).to eq (true)
    end 

    it 'test 11' do 
        sequence = [1, 2, 1, 2]
        expect(@challenge.solution(sequence)).to eq (false)
    end 

    it 'test 12' do 
        sequence = [40, 50, 60, 10, 20, 30]
        expect(@challenge.solution(sequence)).to eq (false)
    end 

    it 'test 13' do 
        sequence = [1, 2, 3, 4, 5, 3, 5, 6]
        expect(@challenge.solution(sequence)).to eq (false)
    end 
end 