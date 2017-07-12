

require "minitest/autorun"
require_relative "no_cig_1.rb"


class TestArr < Minitest::Test


	# def test_empty # no winning tix
	# 	our_tikket = "3422"
	# 	winning_tikket = []
	# 	assert_equal([], find_winner(our_tikket, winning_tikket))
	# end


                                                 #1234
	def test_1_off       # off by one num ie.     #1224 
	 	our_tikket = "3422"
	 	winning_tikket = ["3421"]
		assert_equal(true, offby_1(our_tikket, winning_tikket))
	end	





end
