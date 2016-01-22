puts 'What year were you born? (YYYY)'
b_year = gets.chomp
puts 'What month were you born? ('+ b_year+'/MM/)'
b_month = gets.chomp
puts 'What day of the month were you born? ('+b_year+'/'+b_month+'/DD) '
b_day = gets.chomp

birth_day = Time.local(b_year,b_month,b_day,)
how_many = (Time.new - birth_day)/ 31536000


puts ' '
puts ' '
puts 'Your birth date is ('+b_year+'/'+b_month+'/'+b_day+')'
puts 'That makes you ' 
puts how_many.to_i 
puts 'Years old!! '
puts ' '
puts 'Time for your belated birthday spankings!'
puts ' '
puts 'SPANK! ' * how_many
