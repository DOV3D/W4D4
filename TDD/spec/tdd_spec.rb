require "tdd"
describe Array do
    describe "#my_uniq" do
        subject(:array) { [1, 1, 2, 3, 4, 4] }
        it "should take in an array" do
            expect(array).to be_a(Array)
        end
        it "should not use #uniq" do 
            expect(array.my_uniq).to_not receive(:uniq)
        end
        it "should remove duplicates from array" do
            expect([1, 1, 2, 3, 4, 4].my_uniq).to eq([1,2,3,4])
        end
        it "return value should not equal original array" do
            expect(array.my_uniq).to_not eq(array)
        end
    end
end

describe "#two_sum" do
    let(:same_idx_arr) {[5, 5, -5, -5]}
    let(:arr) {[-1, 0, 2, -2, 1]}
    let(:zero_arr) {[3, 1, 0, 2]}
    it "finds all zero-sum pairs" do
        expect(two_sum(arr)).to eq([[0,4],[2,3]])
    end
    it "can handle zero values" do
        expect(two_sum(zero_arr)).to eq([])
    end
    it "finds zero-sum pairs with the same element" do
        expect(two_sum(same_idx_arr)).to eq([[0, 2],[0, 3],[1, 2],[1, 3]])
    end
end

describe Array do 
    let (:wrong_arr) { [[1, 2, 3], [4, 5], [7, 8, 9]] }
    let (:arr) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
    describe "#my_transpose" do
        it "each sub array must be the same length" do
            expect{wrong_arr.my_transpose}.to raise_error("IndexError")
        end 
        it "transpose 2d array" do
            expect(arr.my_transpose).to eq([[1,4,7],[2,5,8],[3,6,9]])
        end
    end
end

describe "#stock_picker" do
    #takes an array of stock prices
    #returns the most profitable pair of days on which to buy the stock and then sell the stock
    
end



