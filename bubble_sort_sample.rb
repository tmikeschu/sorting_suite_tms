require 'pry'
class BubbleSort

    def sort(letters)  
        binding.pry

        letters.each do
            total = letters.length - 1 
            a = 0 
            total.times do 
                if letters[a] > letters[a + 1]
                    letters[a] , letters[a + 1] = letters[a + 1] ,  letters[a]
                end
                a += 1
            end
        end
        print letters
    end

end

sorter = BubbleSort.new
scramble = ("a".."h").to_a.shuffle
sorter.sort(scramble)