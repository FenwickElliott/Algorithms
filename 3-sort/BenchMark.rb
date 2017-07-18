require_relative 'bubble_sort'
require_relative 'bucket_sort'
require_relative 'merge_sort'
require_relative 'insertion_sort'
require_relative 'quick_sort'
require_relative 'selection_sort'
require_relative 'heap_sort'
require 'benchmark'
require 'faker'

sample = []
for i in 0..50
    # sample << Faker::Hipster.word
    sample << i
end

# puts sample

n = 1_000

Benchmark.bm do |x|
    x.report("Bubble:") { n.times {bubble_sort(sample.shuffle)}}
    x.report("Bucket:") { n.times {bucket_sort(sample.shuffle)}}
    x.report("Insertion:") { n.times {insertion_sort(sample.shuffle)}}
    x.report("Merge:") { n.times {merge_sort(sample.shuffle)}}
    x.report("Quick:") { n.times {quick_sort(sample.shuffle)}}
    x.report("Selection:") { n.times {selection_sort(sample.shuffle)}}
    x.report("Heap:") { n.times {heap_sort(sample.shuffle)}}
end