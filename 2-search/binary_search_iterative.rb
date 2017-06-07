require 'benchmark'

def search(array, target)
    return "This search is for a String in an Array" unless target.class == String && array.class == Array
    lo = 0
    hi = array.length - 1
    return hi if array[hi] == target
    while (lo != hi)
        mid = (hi - lo)/2 + lo
        if array[mid] == target
            return mid
        elsif array[mid] < target
            lo = mid
        else
            hi = mid
        end
    end
    return "#{target} was not found in that array"
end

alphabet = []
for i in 97..122
    alphabet << i.chr
end

puts Benchmark.measure {
    10000.times do 
        for i in 97..122
            puts search(alphabet,i.chr)
        end
    end
}