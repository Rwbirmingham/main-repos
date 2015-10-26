puts "Type in what you would like to be sorted:"
dir_sort = []

while true
  user_input = gets.chomp
  if user_input == ""
    break
  end  
  dir_sort.push user_input
end

def bubble_sort arr
return arr if arr.length <= 1
x = arr.pop
less = arr.select{|m| m.downcase < x.downcase}
more = arr.select{|m| m.downcase >= x.downcase}
bubble_sort(less) + [x] + bubble_sort(more)
end

puts "Here is your list."
puts bubble_sort(dir_sort)