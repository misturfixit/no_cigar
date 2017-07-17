require "minitest/autorun"
require_relative "zakmatch.rb"

class TestArr < Minitest::Test

	def test_posit_match(crackers, crakkers)
		crackers =[4]
		crakkers =[4]
		assert_equal(positions[4], length(crackers, crakkers))

	end	
end	