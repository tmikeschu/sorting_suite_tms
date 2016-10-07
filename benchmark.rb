require 'pry'
require 'benchmark'
require '~/Turing/1module/1week/Sorting_Suite/bubble_sort.rb'
require './merge_sort'
require_relative 'insertion_sort'

module SortingSuite
    include Benchmark

    class Bubble 
        def initialize(array)
            BubbleSort.new(array)
        end
    end

    class Merge 
        def initialize(array)
            MergeSort.new(array)
        end
    end

    class Insertion 
        def initialize(array)
            InsertionSort.new(array)
        end
    end

    class BenchmarkClass
        def time(sorter, array)
        end
        
        def fastest(array)
        
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