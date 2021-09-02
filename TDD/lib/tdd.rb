class Array
    def my_uniq
        uniq = []
       self.each do |ele|
            uniq << ele if uniq.none?(ele)
       end
       uniq
    end
end

def two_sum(arr)
    new_arr = []
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            new_arr << [i, j] if arr[i] + arr[j] == 0
        end
    end
    new_arr
end

class Array
    def my_transpose
        dim = self.first.count
        raise "IndexError" if !self.all? {|row| row.length == dim}

        columns = Array.new(dim) { Array.new(dim) }
        (0...dim).each do |i|
            (0...dim).each do |j|
                columns[j][i] = self[i][j] 
            end
        end
        columns
    end
end

def stock_picker(prices)
    profits = []
    buy_sell = []


    prices.each_with_index do |price1, day1|
        prices.each_with_index do |price2, day2|
           next if day2 < day1
            profits << (price2 - price1)
            buy_sell << [day1, day2]

        end
    end

    most_profitable
end