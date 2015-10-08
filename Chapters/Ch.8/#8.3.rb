#Alphabetical order 
  puts '  Hi, 
  Make a list of words (one word per line please) and 
  I will sort it out for you in alphabetical order! '

  words = Array.new
  while (userInput = gets.chomp) != ''
    words.push(userInput)
  end
  puts words.sort
  
  puts ''
  puts 'You\'re welcome!'