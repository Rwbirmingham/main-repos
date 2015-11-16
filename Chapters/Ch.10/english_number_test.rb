def prompt
  puts "Please enter an integer greater than zero:"
  integer = gets.chomp.to_i
  if integer < 0
    puts "Negative numbers are not allowed."
    prompt
  else  
    return integer
  end
end

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
   
  hundreds  = ["Hundred "]  
  
  thousands = [" thousand"]
  
  left = number
  write = left/1000
  left = left - write * 1000
  
  if write > 0
    if ((write == 1) and (left < 0))
      num_string = num_string + hundreds[left-1]
      left = 0
    else
      num_string = num_string + thousands[write-1]
    end
    if left > 0
      num_string = num_string + "-"
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

puts english_number(prompt)