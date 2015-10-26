
  puts '  Hi, 
  Make a list of words (one word per line please) and 
  I will shuffle it! '

  words = Array.new
  while (userInput = gets.chomp) != ''
    words.push(userInput)
  end
  puts words.sort
  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
     still_unsorted.push tested_object
    end
  end
  
  puts ''
  puts 'You\'re welcome!'