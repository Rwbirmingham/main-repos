
line_width = 50
puts(          'Old Mother Hubbard' .center(line_width))
puts(         'Sat in her cupboard' .center(line_width))


line_width = 40
str = '-->text<--'
puts(str.ljust( line_width))
puts(str.center( line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
