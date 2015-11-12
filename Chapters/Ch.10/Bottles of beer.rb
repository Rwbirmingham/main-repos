how_many_beers = 99
and_now = how_many_beers
two_left = 2
two_left = 'two'
one_left = 1
one_left = 'one'

def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end
  
  num_string = ""
  
  ones_place = ["one", "two", "three",
                "four", "five", "six",
                "seven", "eight", "nine"]
              
  tens_place = ["ten", "twenty", "thirty",
                "forty", "fifty", "sixty",
                "seventy", "eighty", "ninety"]
       
  teenagers = ["eleven", "twelve", "thirteen",
               "fourteen", "fifteen", "sixteen",
               "seventeen", "eighteen", "nineteen"]
               
               
  left = number
  write = left/100
  left = left - write * 100
  
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end
  
  write = left/10
  left = left - write * 10
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  
  write = left
  left = 0
  
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  
  num_string
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