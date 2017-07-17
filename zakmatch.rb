


words = %w[crackers crakkers crakkaas]
p "#{words} ...begin "

joined = words.join 
p "#{joined} ...joined arrays"

positions = (0...joined.length).group_by{|i| joined[i]} 
p "#{positions}"
  #  joins arrays into single string then groups them 
  # into (matching) arrays by position in the joined srting
length = words.first.length
p "#{length} ...aaand"

n = words.length
p "#{n}"

diff = Hash[*positions.map{|k, v|[k, v.group_by{|i| i % length}.reject{|i, is| is.length == n}.keys]}]
p "#{diff}"
#p "#{length}"
