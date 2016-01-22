class Array
  def shuffle
    unshuffled = self
    truff_shuff = []
    while unshuffled.length > 0
      rand_element = rand(unshuffled.length)
      index = 0
      new_arr = []

      unshuffled.each do |m|
        if index == rand_element
          truff_shuff.push m
        else
          new_arr.push m
        end
        index = index + 1
      end

      unshuffled = new_arr
    end

    truff_shuff
  end
end
class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def roman_num 

    m = 'M' * (self       / 1000)
    d_rom =   (self % 1000 /  500)
    c_rom =   (self % 500  /  100) 
    l_rom =   (self % 100  /   50) 
    x_rom =   (self % 50   /   10)    
    v_rom =   (self % 10   /    5)
    i_rom =   (self % 5    /    1)   

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
end 
puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.roman_num
