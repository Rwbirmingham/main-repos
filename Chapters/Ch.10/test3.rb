puts "Type in what you would like to be shuffled:"
truff_shuff = []

while true
  user_input = gets.chomp
  if user_input == ""
    break
  end  
  truff_shuff.push user_input
end

def rbshuffle arr
  new_arr = []

  arr.each do |x|
    while true 
      rindex = rand(arr.length * 10)
      if new_arr [rindex] == nil
	    new_arr [rindex] = x
	    break
  	  end
    end
  end
  arr = new_arr.compact  
end

puts "Here is your list shuffled:"
puts rbshuffle(truff_shuff)