# Improved Time Complexity
def improved_time(*arrays)
  sorted = []
  arrays.each do |array|
    array.each do |value|
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
        i += 1 if value > sorted[i]
        sorted.insert(i,value)
      end
    end
  end
  sorted
end