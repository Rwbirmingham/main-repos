def roman_num num
  roman_num = ''
  m  = 'M'  * (num        / 1000)
  cm = 'CM' * (num % 1000 /  900)
  d  = 'D'  * (num % 1000 /  500)
  cd = 'CD' * (num % 1000 /  400)
  c  = 'C'  * (num % 500  /  100) 
  xc = 'XC' * (num % 500  /   90)
  l  = 'L'  * (num % 100  /   50)
  xl = 'XL' * (num % 100  /   40)
  x  = 'X'  * (num % 50   /   10)
  ix = 'IX' * (num % 10   /    9)
  v  = 'V'  * (num % 10   /    5)
  iv = 'IV' * (num % 5    /    4)
  i  = 'I'  * (num % 4    /    1)
  roman_num = m + cm + d + cd + c + xc + l + xl + x + ix + v + iv + i
end
puts(roman_num(40)) 