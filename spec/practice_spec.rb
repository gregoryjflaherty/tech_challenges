require './lib/practice.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    it 'test 1' do 
        emails = ["john.doe@mit.edu", 
        "admin@rain.ifmo.ru", 
        "noname@mit.edu"]
        expected = ["mit.edu", 
        "rain.ifmo.ru"]
        expect(@challenge.solution(emails)).to eq (expected)
    end 

    it 'test 3' do 
        emails = ["a@rain.ifmo.ru", 
        "b@rain.ifmo.ru", 
        "c@rain.ifmo.ru", 
        "d@rain.ifmo.ru", 
        "e@rain.ifmo.ru", 
        "noname@mit.edu"]
        expected = ["rain.ifmo.ru", 
        "mit.edu"]
        expect(@challenge.solution(emails)).to eq (expected)
    end 

    it 'test 5' do 
        emails = ["a@rain.ifmo.ru", 
        "b@rain.ifmo.ru", 
        "c@rain.ifmo.ru", 
        "d@rain.ifmo.ru", 
        "e@rain.ifmo.ru", 
        "f@rain.ifmo.ru", 
        "g@rain.ifmo.ru", 
        "h@rain.ifmo.ru", 
        "i@rain.ifmo.ru", 
        "j@rain.ifmo.ru", 
        "k@rain.ifmo.ru", 
        "l@rain.ifmo.ru", 
        "m@rain.ifmo.ru", 
        "n@rain.ifmo.ru", 
        "o@rain.ifmo.ru", 
        "p@rain.ifmo.ru", 
        "q@rain.ifmo.ru", 
        "r@rain.ifmo.ru", 
        "s@rain.ifmo.ru", 
        "t@rain.ifmo.ru", 
        "u@rain.ifmo.ru", 
        "v@rain.ifmo.ru", 
        "w@rain.ifmo.ru", 
        "x@rain.ifmo.ru", 
        "y@rain.ifmo.ru", 
        "a@mit.edu.ru", 
        "b@mit.edu.ru", 
        "c@mit.edu.ru", 
        "d@mit.edu.ru", 
        "e@mit.edu.ru", 
        "f@mit.edu.ru", 
        "g@mit.edu.ru", 
        "h@mit.edu.ru", 
        "i@mit.edu.ru", 
        "j@mit.edu.ru", 
        "k@mit.edu.ru", 
        "l@mit.edu.ru", 
        "m@mit.edu.ru", 
        "n@mit.edu.ru", 
        "o@mit.edu.ru"]
        expected = 
        ["rain.ifmo.ru", 
        "mit.edu.ru"]
        expect(@challenge.solution(emails)).to eq (expected)
    end 

    it 'test 10' do 
       emails = ["b@rain.ifmo.ru", 
        "c@rain.ifmo.ru", 
        "d@rain.ifmo.ru", 
        "e@rain.ifmo.ru", 
        "f@rain.ifmo.ru", 
        "g@rain.ifmo.ru", 
        "h@rain.ifmo.ru", 
        "i@rain.ifmo.ru", 
        "j@rain.ifmo.ru", 
        "k@rain.ifmo.ru", 
        "l@rain.ifmo.ru", 
        "m@rain.ifmo.ru", 
        "n@rain.ifmo.ru", 
        "o@rain.ifmo.ru", 
        "p@rain.ifmo.ru", 
        "q@rain.ifmo.ru", 
        "r@rain.ifmo.ru", 
        "s@rain.ifmo.ru", 
        "t@rain.ifmo.ru", 
        "u@rain.ifmo.ru", 
        "v@rain.ifmo.ru", 
        "w@rain.ifmo.ru", 
        "x@rain.ifmo.ru", 
        "y@rain.ifmo.ru", 
        "a@mit.edu.ru", 
        "b@mit.edu.ru", 
        "c@mit.edu.ru", 
        "d@mit.edu.ru", 
        "e@mit.edu.ru", 
        "f@mit.edu.ru", 
        "g@mit.edu.ru", 
        "h@mit.edu.ru", 
        "i@mit.edu.ru", 
        "j@mit.edu.ru", 
        "k@mit.edu.ru", 
        "l@mit.edu.ru", 
        "m@mit.edu.ru", 
        "n@mit.edu.ru", 
        "o@mit.edu.ru"]
        expected = ["mit.edu.ru", 
        "rain.ifmo.ru"]

        expect(@challenge.solution(emails)).to eq (expected)
    end 

   
end 