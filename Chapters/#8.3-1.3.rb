line_width = 25
title = ('Table Of Contents '.rjust(line_width+15))
chap_names = [ ('Chapter 1: Getting Started'.ljust(line_width)) , ('page  1'.rjust(line_width)) , ('Chapter 2: Numbers        '.ljust(line_width)), ('page  9'.rjust(line_width)) , ('Chapter 3: Letters        '.ljust(line_width)) , ('page 13'.rjust(line_width)) ]


puts title.to_s
puts ''
puts chap_names [0].to_s + chap_names [1].to_s
puts chap_names [2].to_s + chap_names [3].to_s
puts chap_names [4].to_s + chap_names [5].to_s
