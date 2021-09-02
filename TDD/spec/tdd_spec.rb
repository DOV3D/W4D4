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