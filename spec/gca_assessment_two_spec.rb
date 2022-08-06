require './lib/gca_assessment_two.rb'

RSpec.describe Challenge do 
    before(:each) do 
        @challenge = Challenge.new
    end 
    
    xit 'test 1' do 
        input_array = queries = [
  ["SET_OR_INC", "A", "B", "5"],
  ["SET_OR_INC", "A", "B", "6"],
  ["GET", "A", "B"],
  ["GET", "A", "C"],
  ["DELETE", "A", "B"],
  ["DELETE", "A", "C"]
]
        expected = ["5", "11", "11", "", "true", "false"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    xit 'test 2' do 
        input_array = [["SET_OR_INC","foo","bar","70"], 
 ["SET_OR_INC","foo","two","60"], 
 ["SET_OR_INC","foo","bar","30"], 
 ["GET","foo","bar"], 
 ["GET","foo","two"], 
 ["SET_OR_INC","foo","two","50"], 
 ["DELETE","foo","bar"], 
 ["GET","foo","bar"], 
 ["SET_OR_INC","foo","two","20"], 
 ["SET_OR_INC","foo","two","150"], 
 ["SET_OR_INC","foot","wo","30"], 
 ["SET_OR_INC","foo","bar","70"], 
 ["GET","foo","bar"], 
 ["GET","foo","two"]]
        expected = ["70", 
 "60", 
 "100", 
 "100", 
 "60", 
 "110", 
 "true", 
 "", 
 "130", 
 "280", 
 "30", 
 "70", 
 "70", 
 "280"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    xit 'test 3' do 
        input_array = [["DELETE","key","key"], 
 ["DELETE","key","key2"], 
 ["GET","A","B"], 
 ["GET","key","key"], 
 ["DELETE","key","key"], 
 ["SET_OR_INC","key","key","12"], 
 ["SET_OR_INC","foo","bar","906"], 
 ["DELETE","key","bar"], 
 ["DELETE","key","key2"], 
 ["GET","key","key"], 
 ["GET","k","eykey"], 
 ["SET_OR_INC","key","key","60"], 
 ["GET","key","key"]]
        expected = ["false", 
 "false", 
 "", 
 "", 
 "false", 
 "12", 
 "906", 
 "false", 
 "false", 
 "12", 
 "", 
 "72", 
 "72"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    it 'test 4' do 
        input_array = queries = [
  ["SET_OR_INC", "C", "field1", "10"],
  ["TOP_N_KEYS", "5"],
  ["SET_OR_INC", "A", "field1", "5"],
  ["DELETE", "A", "field1"],
  ["SET_OR_INC", "B", "field1", "8"],
  ["SET_OR_INC", "B", "field1", "0"],
  ["TOP_N_KEYS", "3"],
  ["DELETE", "B", "field2"],
  ["SET_OR_INC", "B", "field2", "6"],
  ["SET_OR_INC", "A", "field1", "4"],
  ["SET_OR_INC", "A", "field1", "2"],
  ["TOP_N_KEYS", "2"],
]
        expected = ["10", "C(1)", "5", "true", "8", "B(1), C(1)", "false", "6", "4", "2", "A(2), B(2)"]
        expect(@challenge.solution(input_array)).to eq (expected)
    end 

    # it 'test 5' do 
    #     input_array = ["enyky", "benyky", "yely", "varennyky"]
    #     expected = ["varennyky"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 

    # it 'test 6' do 
    #     input_array = ["abacaba", "abacab", "abac", "xxxxxx"]
    #     expected = ["abacaba"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 

    # it 'test 7' do 
    #     input_array = ["young", "yooooooung", "hot", "or", "not", 
    #                     "come", "on", "fire", "water", "watermelon"]
    #     expected = ["yooooooung", "watermelon"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 

    # it 'test 8' do 
    #     input_array = ["onsfnib", "aokbcwthc", "jrfcw"]
    #     expected = ["aokbcwthc"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 

    # it 'test 9' do 
    #     input_array = ["lbgwyqkry"]
    #     expected = ["lbgwyqkry"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 

    # it 'test 10' do 
    #     input_array = ["i"]
    #     expected = ["i"]
    #     expect(@challenge.solution(input_array)).to eq (expected)
    # end 
end 