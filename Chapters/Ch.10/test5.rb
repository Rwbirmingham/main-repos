puts "Type in what you would like to be shuffled:"
truff_shuff = []

while true
  user_input = gets.chomp
  if user_input == ""
    break
  end  
  truff_shuff.push user_input
end

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end

puts "Here is your list."
puts bubble_sort(truff_shuff)