year_1930 = rand(1930...1951)
count = 0
puts 'SONNY, IS THAT YOU?'

while true
name = gets.chomp
  if name == 'BYE'
    count += 1 
	if count == 3
      puts 'BYE SONNY!' 
      break
	end	
  elsif name == name.upcase
    puts 'NO, NOT SINCE ' + year_1930.to_s + '.'
    count = 0		
  else  
	puts 'HUH?!  SPEAK UP, SONNY.'
    count = 0	
  end
end 