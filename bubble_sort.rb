require 'pry'

class BubbleSort
    def initialize
    end

    def sort(letters)
        #binding.pry
        puts "Unsorted: #{letters}"
        letters.each do
            total = letters.length - 1
            total.times do |index|
                next_index = index + 1
                if letters[index] > letters[next_index]
                    letters[index], letters[next_index] = letters[next_index], letters[index]
                end
            end
        end
        puts "Sorted: #{letters}"
        puts ""
    end

end

sorter = BubbleSort.new

scramble = ("a".."k").to_a.shuffle
doubles = scramble.zip(scramble).flatten.shuffle
number_salad = (1..15).to_a.shuffle


sorter.sort(["d", "b", "a", "c"])
sorter.sort(scramble)
sorter.sort(doubles)
sorter.sort(number_salad)
