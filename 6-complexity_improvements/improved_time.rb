# Improved Time Complexity
def improved_time(*arrays)
  sorted = []
  arrays.each do |array|
    array.each do |value|
      puts sorted.inspect
      if sorted.empty? || value >= sorted.last
        sorted << value
      elsif value < sorted[0]
        sorted.insert(0,value)
      else
        lo = 0
        hi = sorted.size
        until lo + 1 == hi
          i = (hi - lo) / 2 + lo
          if value > sorted[i]
            lo = i
          else
            hi = i
          end
        end
        sorted.insert(i,value)
      end
    end
  end
  sorted
end



puts improved_time([100,1,4,2,8,6,9,0,5]).inspect