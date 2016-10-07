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
        def time(sorter, array = [3,3,4,5,1])
            sort_time = benchmark(sorter, array)
            sort_time = sort_time.to_s.split[-1].chop.to_f
            puts "#{sorter.to_s.partition("::")[-1]} took #{sort_time} seconds"
            sort_time
        end

        def time_without_puts(sorter, array = [3,3,4,5,1])
            sort_time = benchmark(sorter, array)
            sort_time = sort_time.to_s.split[-1].chop.to_f
            sort_time        
        end

        def benchmark(sorter, array)
            Benchmark.measure {sorter.new(array)}
        end

        def fastest(array)
            times          = []
            merge_time     = [time_without_puts(SortingSuite::MergeSort, array), "MergeSort"]
            bubble_time    = [time_without_puts(SortingSuite::BubbleSort, array), "BubbleSort"]
            insertion_time = [time_without_puts(SortingSuite::InsertionSort, array), "InsertionSort"]
            times << merge_time << bubble_time << insertion_time
            puts "#{times.sort.first[-1]} is the fastest"
        end

        def slowest(array)
            times          = []
            merge_time     = [time_without_puts(SortingSuite::MergeSort, array), "MergeSort"]
            bubble_time    = [time_without_puts(SortingSuite::BubbleSort, array), "BubbleSort"]
            insertion_time = [time_without_puts(SortingSuite::InsertionSort, array), "InsertionSort"]
            times << merge_time << bubble_time << insertion_time
            puts "#{times.sort.reverse.first[-1]} is the slowest"
        end

    end

end

benchmark = SortingSuite::BenchmarkClass.new

benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
benchmark.time(SortingSuite::MergeSort)

benchmark.fastest([2, 8, 1, 0, 5])
benchmark.slowest([1, 2, 3, 4, 5])

scramble = ("a".."k").to_a.shuffle
doubles = scramble.zip(scramble).flatten.shuffle
number_salad = (1..15).to_a.shuffle

benchmark.fastest(scramble)
benchmark.slowest(scramble)
