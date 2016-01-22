class OrangeTree
  def initialize
    @height       = 0
    @orange_count = 0
    @age = 0
  end
  
  def things_to_do (input_str)
      case input_str
      when "height"
        height_of_tree
      when "wait"
        one_year_passes
      when "count"
        count_the_oranges
      when "pick"
        pick_an_orange      
      end
  end
  
  def height_of_tree
    puts 'The tree is ' + @height.to_s + ' feet tall.'
  end

  def one_year_passes
    passage_of_time
  end

  def count_the_oranges
    puts 'There are ' + @orange_count.to_s + ' oranges on the tree.'
  end

  def pick_an_orange
    if @orange_count < 1
      puts 'There are no oranges on the tree to pick.'
    else
      @orange_count -= 1
      puts 'That orange was delicious.'
    end 
  end

  private

  def sapling?
    @age < 3
  end

  def dead?
    @age > 9
  end

  def passage_of_time
    @orange_count = 0
    @age += 1

    if dead?
      puts 'The tree has died.'
      exit
    else
      puts 'The tree is ' + @age.to_s + ' years old.'
    end

    @height += 3

    if !sapling?
      @orange_count += @age + 3
    else
      puts 'The tree is too young to bear fruit.'
    end
  end
end
Tree = OrangeTree.new
puts ''
puts ''  
puts '           Your orange tree has been planted.'

while true  
  puts ''
  puts "_________________________________________________________"
  puts "            * What would you like to do? *    (commands)  "     
  puts "---------------------------------------------------------"
  puts "Check the height of the tree.                  (height)"
  puts "Count your oranges.                            (count)"
  puts "Pick an orange.                                (pick)"
  puts "Wait a year.                                   (wait)"
  puts "---------------------------------------------------------"  
  
  input_str = gets.chomp.downcase

  Tree.things_to_do(input_str)
  
end