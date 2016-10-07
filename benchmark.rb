require 'pry'
require 'benchmark'
require './bubble_sort.rb'
require './merge_sort'
require './insertion_sort'

module SortingSuite
    include Benchmark
    class BubbleSort
        attr_writer :array

        def initialize(array)
            @array = array
        end

        def sort
            BubbleSort.new.sort(array)        
        end
    end

    class MergeSort
        attr_writer :array
        
        def initialize(array)
            @array = array
        end

        def sort
            MergeSort.new.sort(array)
        end
    end

    class InsertionSort
        attr_writer :array

        def initialize(array)
            @array = array
        end

        def sort
            InsertionSort.new.sort(array)
        end
    end

    class BenchmarkClass
        include Benchmark
        def time(sorter, array)
            sort_time = benchmark(sorter, array)
            puts "#{sorter} took #{sort_time.real.round} seconds"
        end

        def benchmark(sorter, array)
            Benchmark.measure {sorter.new(array)}
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

benchmark = SortingSuite::BenchmarkClass.new
benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
=begin
#=> "InsertionSort took 0.004333 seconds"

benchmark.time(SortingSuite::MergeSort)
#=> "MergeSort took 0.000274 seconds"

benchmark.fastest([2, 8, 1, 0, 5])
#=> "MergeSort is the fastest"

benchmark.slowest([1, 2, 3, 4, 5])
#=> "BubbleSort is the slowest"
=end