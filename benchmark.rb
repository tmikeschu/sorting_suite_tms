require 'pry'
require 'benchmark'
require './bubble_sort.rb'
require './merge_sort'
require './insertion_sort'

module SortingSuite
    include Benchmark

    class BubbleSort 
        def initialize(array)
            BubbleSort.new(array)
        end
    end

    class MergeSort
        def initialize(array)
            MergeSort.new(array)
        end
    end

    class InsertionSort
        def initialize(array)
            InsertionSort.new(array)
        end
    end

    class BenchmarkClass
        def time(sorter, array)
            sort_time = benchmark(sorter, array)
            #puts "#{method} took #{time}"
        end
        
        def fastest(array)
        
        end

        def slowest(array)
            merge_time = time(SortingSuite::MergeSort, array)

            bubble_sort = SortingSuite::Bubble.new(array)
            insertion_sort = SortingSuite::Insertion.new(array)
            
            
        end

    end

end

#benchmark = SortingSuite::Benchmark.new
=begin
benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
#=> "InsertionSort took 0.004333 seconds"

benchmark.time(SortingSuite::MergeSort)
#=> "MergeSort took 0.000274 seconds"

benchmark.fastest([2, 8, 1, 0, 5])
#=> "MergeSort is the fastest"

benchmark.slowest([1, 2, 3, 4, 5])
#=> "BubbleSort is the slowest"
=end