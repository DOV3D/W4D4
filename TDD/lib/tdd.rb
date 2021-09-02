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