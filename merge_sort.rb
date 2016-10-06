require 'pry'

class MergeSort
    def initilize
    end

    def sort(array)
        binding.pry
        return array if array.length <= 1
        
        mid   = array.length / 2
        left  = sort(array[0, mid])
        right = sort(array[mid, array.length-mid])
        merge_sorted_arrays left, right
    end

    def merge_sorted_arrays
        
    end
end

sorter = MergeSort.new

scramble = ("a".."k").to_a.shuffle
doubles = scramble.zip(scramble).flatten.shuffle
number_salad = (1..15).to_a.shuffle


p sorter.sort(["d", "b", "a", "c"])
sorter.sort(scramble)
sorter.sort(doubles)
sorter.sort(number_salad)
