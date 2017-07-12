
	

def find_winner(our_tikket, winning_tikkets)
		matches = []
		winning_tikkets.each do |winning_tikket|
	
	if	winning_tikket == our_tikket
	    matches << our_tikket 
	end

  end

matches

end

def offby_1(our_tikket, winning_tikkets)
			matching_nums = 0
		if our_tikket [0] == winning_tikkets[0]
				matching_nums += 1	
		else 0		
	end
		if	our_tikket [1] == winning_tikkets[1]
			matching_nums += 1
		else 0
	end
		if our_tikket [2] == winning_tikkets[2]
			matching_nums += 1
		else 0	
	end
		if our_tikket [3] == winning_tikkets[3]
			matching_nums += 1
		else 0
	end		

		if matching_nums == 3
			true
	end

end










	


# def one_off
# 	repeats = winning_tikkets.length - winning_tikkets.uniq.length
# 		if repeats == 3      sooo... this one wasn't it

# 		puts "oneoff"
		
# 		else
# 		puts "nomatch"
# 	end
# 	end

# 	one_off



