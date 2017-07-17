

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


	def test_same_false
		our_tikket = "3422"
		winning_tikket = "3422"
		assert_equal(false, offby_1(our_tikket, winning_tikket))
	end	


	def test_1_off_multi
		our_tikket = "3422"
		winning_tikket = ["3428", "1234", "7422", "2322"]
		#puts "winnin numbs are #{winning_tikket}"
		#puts "matchin nums arrr #{matchin}"
		assert_equal(["3428","7422"], win_arry(our_tikket, winning_tikket))
	end	


	def test_no_winner
		our_tikket = "3422"
		winning_tikket = ["5678", "9854", "6548", "9518"]
		assert_equal([], win_arry(our_tikket, winning_tikket))
	end	


	def test_sevnum_winner
		our_tikket = "1234567"
		winning_tikket = ["1234567", "5421367", "9463125"]		
		assert_equal(["1234567"], find_winner(our_tikket, winning_tikket))	
	end				 

	def test_oneoffsevn
		our_tikket = "1234567"
		winning_tikket = ["1234566", "9876543"]
		assert_equal(["1234566"], sevnum_arry(our_tikket, winning_tikket))
	end


	def test_lesthn_all
		our_tikket = "12345"
		winning_tikket = ["12345", "852456", "159"]
		assert_equal(["12345"], sevnum_arry(our_tikket, winning_tikket))
	end	


	def test_flexi_true
		mynew_tik = "6789"
	    winnner_tik = "6788"
	    assert_equal(true, flexible?(mynew_tik, winnner_tik)) 
	end
	
	def test_new_7
	 	mynew_tik = "1234567"
	 	winnner_tik = "1234561"
	 	assert_equal(true, flexible?(mynew_tik, winnner_tik))
	end	 


end	



