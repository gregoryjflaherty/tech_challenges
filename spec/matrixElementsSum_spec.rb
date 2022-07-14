require './lib/matrixElementsSum.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        matrix = [[0,1,1,2], 
                    [0,5,0,0], 
                    [2,0,3,3]]
        expect(@challenge.solution(matrix)).to eq (9)
    end 

    it 'test 2' do 
        matrix = [ [1,1,1,0], 
                   [0,5,0,1], 
                   [2,1,3,10]]
        expect(@challenge.solution(matrix)).to eq (9)
    end 

    it 'test 3' do 
        matrix = [[1,1,1], 
                    [2,2,2], 
                    [3,3,3]]
        expect(@challenge.solution(matrix)).to eq (18)
    end 

    it 'test 4' do 
        matrix = [[0]]
        expect(@challenge.solution(matrix)).to eq (0)
    end 

    it 'test 5' do 
        matrix = [[1], 
                    [5], 
                    [0], 
                    [2]]
        expect(@challenge.solution(matrix)).to eq (6)
    end 

    it 'test 6' do 
        matrix =   [[1,0,3], 
                    [0,2,1], 
                    [1,2,0]]
        expect(@challenge.solution(matrix)).to eq (5)
    end 

    it 'test 7' do 
        matrix = [[1,2,3,4,5]]
        expect(@challenge.solution(matrix)).to eq (15)
    end 

    it 'test 8' do 
        matrix = [[2], 
                    [5], 
                    [10]]
        expect(@challenge.solution(matrix)).to eq (17)
    end 

    it 'test 9' do 
        matrix = [[4,0,1], 
                    [10,7,0], 
                    [0,0,0], 
                    [9,1,2]]
        expect(@challenge.solution(matrix)).to eq (15)
    end 

    it 'test 10' do 
        matrix = [[1]]
        expect(@challenge.solution(matrix)).to eq (1)
    end 
end 