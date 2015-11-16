how_many_beers = 9999
and_now = how_many_beers
two_left = 2
two_left = 'two'
one_left = 1
one_left = 'one'

def english_number(int)
  numbers_to_name = {
      1000000000000 => "trillion",
      1000000000 => "billion",
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + english_number(int%num)
    elsif int/num > 0
      return str + english_number(int/num) + " #{name} " + english_number(int%num)
    end
  end
end

while and_now > 2
  puts english_number(and_now).capitalize + ' bottles of beer on the wall, ' +
       english_number(and_now) + ' bottles of beer!'
  and_now = and_now - 1 
  puts 'Take one down, pass it around, ' +
       english_number(and_now) + ' bottles of beer on the wall!'
end
  puts two_left.to_s.capitalize + ' bottles of beer on the wall, ' + two_left.to_s + ' bottles of beer!'
  puts 'Take one down, pass it a around, ' + one_left.to_s + ' bottle of beer on the wall'
  puts one_left.to_s.capitalize + ' bottle of beer on the wall, ' + one_left.to_s + ' bottle of beer!'
  puts 'Take one down, pass it a around, no more bottles of beer on the wall. '