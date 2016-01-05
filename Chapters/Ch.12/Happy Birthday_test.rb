puts 'What year were you born? (YYYY/--/--)'
b_year = gets.chomp
puts 'What month were you born? ('+ b_year+'/MM/--)'
b_month = gets.chomp
puts 'What day of the month were you born? ('+b_year+'/'+b_month+'/DD) '
b_day = gets.chomp

birth_day = Time.local(b_year,b_month,b_day,)
birth_days = birth_day.to_i 
sec_year = 31536000
how_many = birth_days / sec_year


puts ' '
puts ' '
puts 'Time for your birthday spankings!'
puts ' '
puts 'SPANK! ' * how_many
