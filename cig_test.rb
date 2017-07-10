

require "minitest/autorun"
require_relative "no_cig_1.rb"


class TestArr < Minitest::Test


	def test_empty #no winning tix
		our_tikket = "3421"
		winning_tikkets = []
		assert_equal([], find_winner(our_tikket, winning_tikkets))
	end


	# def test_winner
	# 	my_num = "1234" 
	# 	nums = ["1423", "4321", "5455"]
	# 	assert_equal([], grand_bash(bash_nums, my_num))
	# end  	



end
