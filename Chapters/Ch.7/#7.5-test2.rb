puts "\n It's beer song time!\n"

bottles = lambda {|n| n == 1 ? "#{n} bottle" : "#{n} bottles"}
sep = "~" * 32

99.downto 1 do |n|
puts "#{sep}
#{bottles[n]} of beer on the wall
#{bottles[n]} of beer
Take one down, pass it around
#{bottles[n - 1]} of beer on the wall"
end

puts sep
puts "\n No more beer on the wall :-("
