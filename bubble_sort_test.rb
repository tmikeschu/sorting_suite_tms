require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "bubble_sort"

class BubbleSortTest < Minitest::Test
    def test_it_exists
        sorter = BubbleSort.new
        assert sorter
    end

    def test_sorts_array
        sorter = BubbleSort.new
        assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "a", "c", "b"])
    end

end