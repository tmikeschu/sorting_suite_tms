require 'pry'

class InsertionSort
    def initialize
    end

    def sort(letters)
        #binding.pry
        puts "Unsorted: #{letters}"
        sorted = []
        sorted << letters.shift
        until letters.length.zero?
            unsorted_letter = letters.first
            sorted.each_with_index do |sorted_letter, sorted_index|
                if unsorted_letter <= sorted_letter
                    sorted.insert(sorted_index, letters.shift)
                    break
                end

                if sorted_letter == sorted.last
                    sorted.push(letters.shift)
                    break
                end
            end
        end
        puts "Sorted: #{sorted}"
        puts ""
    end

end

=begin
    
sorter = InsertionSort.new

scramble = ("a".."k").to_a.shuffle
doubles = scramble.zip(scramble).flatten.shuffle
number_salad = (1..15).to_a.shuffle

sorter.sort(["d", "b", "a", "c"])
sorter.sort(scramble)
sorter.sort(doubles)
sorter.sort(number_salad)

=end
