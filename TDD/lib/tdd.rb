class Array
    def my_uniq
        uniq = []
       self.each do |ele|
            uniq << ele if uniq.none?(ele)
       end
       uniq
    end
end