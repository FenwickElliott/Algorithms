require_relative './heap/heap'
require_relative './heap/node'

def heap_sort(collection)
    h = Heap.new
    collection.each {|x| h.add(Node.new(x))}
    h.sort
end