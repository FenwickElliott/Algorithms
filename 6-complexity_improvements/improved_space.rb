# Improved Space Complexity
def improved_space(*arrays)
    sorted = []
    arrays.each do |array|
        array.each do |value|
            i = 0
            i += 1 while sorted[i] && sorted[i] < value
            sorted.insert(i,value)
        end
    end
    sorted
end