def prompt
  puts "Pick a number between 1 and 3000"
  roman_num = gets.to_i
end 

def roman_num num
  if num < 1 || num > 3000
    puts roman_num(prompt)
  else
    m = 'M' * (num        / 1000)
    d = 'D' * (num % 1000 /  500)
    if d = 900
      d = 'CM'
    end
	
  c = 'C' * (num % 500  /  100) 
  l = 'L' * (num % 100  /   50)
  x = 'X' * (num % 50   /   10)
  v = 'V' * (num % 10   /    5)
  i = 'I' * (num % 5    /    1)
  roman_num = m + d + c + l + x + v + i
  end
end 
puts roman_num(prompt)
