def ask question
  while true
    puts question
	reply + gets.chomp.downcase
	if (reply == 'yes' || reply == 'no')
	  if reply == 'yes'
	    answer = true
	  else
	    answer = false
	  end
	  break
	else
	  puts 'Please answer "yes" or "no".'
    end
  end
    
	answer	# THis is what we return (true or false)
end

puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts
