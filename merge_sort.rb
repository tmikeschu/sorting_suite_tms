require 'pry'
require 'benchmark'

class MergeSort
    include Benchmark
    def initilize
    end

    def sort(array)
        puts ""
        puts "Unsorted: #{array}"
        puts "Sorted: "
        split(array)
    end
    
    def split(array)
        #binding.pry
        return array if array.length <= 1
        
        mid   = array.length / 2
        left  = split(array[0...mid])
        right = split(array[mid..-1])
        merge_sorted_arrays(left, right)
    end

    def merge_sorted_arrays(left, right)
        #binding.pry
        merged_array = []
        until left.length == 0 || right.length == 0
            if left.first <= right.first || right.empty?
                merged_array << left.shift
            else 
                merged_array << right.shift
            end
        end
        merged_array << left << right
        merged_array.flatten!
    end

end

sorter = MergeSort.new

scramble = ("a".."g").to_a.shuffle
doubles = scramble.zip(scramble).flatten.shuffle
number_salad = (1..15).to_a.shuffle


#p sorter.sort(["d", "b", "a", "c"])
p sorter.sort(scramble)
p sorter.sort(doubles)
p sorter.sort(number_salad)
