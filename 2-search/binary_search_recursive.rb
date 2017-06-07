require 'benchmark'

def search(array, target, c = 0)
    return "This search is for a String in an Array" unless target.class == String && array.class == Array
    n = array.length/2
    if array[n] == target
        return n + c
    elsif array.length == 1
        return "#{target} was not found in that array"
    elsif array[n] < target
        array = array.drop(n)
        c += n
        search(array, target, c)
    else
        array = array.take(n)
        search(array,target, c)
    end
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