

require "minitest/autorun"
require_relative "no_cig_1.rb"


class TestArr < Minitest::Test


	def test_empty # no winning tix
		our_tikket = "3422"
		winning_tikket = []
		assert_equal([], find_winner(our_tikket, winning_tikket))
	end

							#
	def test_win			#*# Chikken dinner	
		our_tikket = "3422"
		winning_tikket = ["1232", "5674", "3422", "7866"]
		assert_equal(["3422"], find_winner(our_tikket, winning_tikket))
	end	

						  #                       #1234
	def test_1_off      # # off by one num ..ie.  #1224 
	 	our_tikket = "3422"
	 	winning_tikket = "3423"
		assert_equal(true, offby_1(our_tikket, winning_tikket))
	end	


	def test_1_off_multi
		our_tikket = "3422"
		winning_tikket = ["4321", "1234", "4455", "2322", "1423"]
	#	p "winnin numbs are #{find_winner}"
	#	p "matchin nums arrr #{offby_1}"
		assert_equal(true, offby_1(our_tikket, winning_tikket))

	end	


end	
