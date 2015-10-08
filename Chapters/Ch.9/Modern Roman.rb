def prompt
  puts "Pick a number between 1 and 3000"
  num = gets.to_i
  if num < 1 || num > 3000
    prompt 
  else 
    return num 
  end
end 

def roman_num num

  m = 'M' * (num        / 1000)
  d_rom =   (num % 1000 /  500)
  c_rom =   (num % 500  /  100) 
  l_rom =   (num % 100  /   50) 
  x_rom =   (num % 50   /   10)    
  v_rom =   (num % 10   /    5)
  i_rom =   (num % 5    /    1)   

# 900   
  if d_rom == 9
    d = 'CM'
  else
    d = 'D' * d_rom
  end
	
# 400 
  if c_rom == 4
    c = 'CD'
  else
    c = 'C' * c_rom
  end
	
# 90
  if l_rom == 9
    l = 'XC'
  else
    l = 'L' * l_rom
  end
	
# 40
  if x_rom == 4
    x = 'XL'
  else	
    x = 'X' * x_rom 
  end
	
# 9
  if v_rom == 9
    v = 'IX'
  else
    v = 'V' * v_rom
  end
	
# 4 	
  if i_rom == 4
    i = 'IV'
  else 
    i = 'I' * i_rom    
  end
	
  roman_num = m + d + c + l + x + v + i
  
end 

puts roman_num(prompt)