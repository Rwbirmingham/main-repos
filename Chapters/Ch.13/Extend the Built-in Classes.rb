class minion

 attr_accessor :weapon 

  def intialize(name)
  @name = name
  end
  
  def say_name
     puts @name
  end
end

bob = minion.new("Bob") 
bob.say_name
bob.weapon
puts bob.weapon
  

