class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
	@hp = 5
	@xp = 0	
	@level = 0    
	baby_dragon
  end
  
  def things_to_do (input_str)
      case input_str
      when "feed"
        feed
      when "walk"
        walk
      when "bed" || "put to bed"
        put_to_bed
      when "rock"
        rock
      when "toss"
        toss
      when "play"
        play
	  when "level"
        level
      when "attack"
        attack
      when "fly" || 'teach to fly'
        teach_to_fly
	  when "hp" || 'health points'
        health_points	
	  when "xp" || 'experience points'
        experience_points	
      end
  end

  def feed
    puts "You feed #{@name}, He has a look of appreciation."
    @stuff_in_belly = 10
    @hp += 3	
    passage_of_time
  end
  
  def health_points
    puts 'Your HP ' + @hp.to_s + ' '
  end
  
  def experience_points
    puts 'Your XP ' + @xp.to_s + ' '
  end
  
  def walk
    puts "You walk #{@name}, He relieves himself."
    @stuff_in_intestine = 0
    passage_of_time
  end 

  def attack
    puts ''
    puts "#{@name} attacks a local Ork,"
	  sleep 1	
      risk_of_damage = (rand(1..3))
	if risk_of_damage == 3
	  sleep 1
	  puts ''
      puts "          * Ork hits #{@name} and inflict 3 damage!! *"
	  puts ''
	  @hp -= 3	 	  
	  if @hp < 1
	    rip
	  end
      puts attack	  
	else 
	  puts  "Ogre is fatally slain" 
	  @xp += 2
	  if @xp == 10    # *You have reached level 2!*
	    @level += 1				
		med_dragon   
	  end
	  if @xp == 20    # *You have reached level 3!*
	     @level += 1		 
		 large_dragon 
	  end  
      passage_of_time	
	end
  end  
  
  def teach_to_fly
    puts "You pick up #{@name} and throw him in the air,"
	sleep 1
      risk_of_falling = (rand(1..3))
	if risk_of_falling == 3
      puts "He plummets like a rock, #{@name} decides you are no longer a friend then murders you with fire."	
	  exit
	else 
	  puts  "and he FLIES LIKE AN EAGLE!" 
	  @xp += 2
      passage_of_time
	end
  end
  
  def put_to_bed
    puts "You put #{@name} to bed."
	@hp += 5
	sleep 1
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
	    sleep 1
        puts "#{@name} snores, filling the room with smoke."
      end
    end
	sleep 1
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  
  def play
    puts "You play with #{@name}."
    puts 'And he breaks your furniture.'
	@xp += 1
    passage_of_time
  end
  
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
	@hp += 1
	sleep 1
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  private
  
  def hungry?
    @stuff_in_belly <= 2
  end
  
  def poopy?
    @stuff_in_intestine >= 8
  end
  
  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
	  @hp -= 2
    end
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end
	   
	if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
  
  def rip
    sleep 1
	puts ''
	puts '        *************************************************'
    puts "        *        #{@name} has die from his wounds!      *" 
	puts '        *************************************************'
	sleep 2	
    puts ''
    puts ''		
    puts "                      *RIP #{@name}!!* "
      exit
  end
  
  def baby_dragon
    puts "                  * #{@name} is born *"  
    puts '                   ---------------    '
    puts '                  |   (  O  )  ^  |   '  	
    puts '                  |   |O\ /O| / \ |   '
    puts '                  |   \ vvv / //  |   '
    puts '                  |     | |   \\  |   '
    puts '                  |   /     \ //  |   '
    puts '                  |  (| | | |)    |   '
    puts '                  |   | | | |     |   '
    puts '                  |  MMM  MMM     |   '
    puts '                   ---------------    '
	puts''
	puts''
	sleep 3
  end
  
  def med_dragon
    puts ''
	puts '              *You have reached level 2!* '  
    puts '             -----------------------------'
	puts '            |       \\    //             |'
	puts '            |       // ---\\       \     |'
    puts '            |      (        )     ^ \    |'	
    puts '            |       \O\   /O/    / |\\   |'
    puts '            |        \ \ / /^   /  | \\  |'    
    puts '            |         VVVVV  ^^^\  |  \\^|'  
    puts '            |       /   ||         |   \\|'  
    puts '            |      /    W   _______|   |||'
    puts '            |      /  | |  /-------|   |||'  
    puts '            |     /  /  | |        \   |||'
	puts '            |    /  /   | |         \  |||'
	puts '            |   MMMM    MMM          \ |||'
    puts '            ------------------------------'
	puts''
	sleep 3
  end
  
  def large_dragon
    puts''
	puts '                *You have reached level 3*       '  
    puts '         --------------------------------------- '
	puts '        |   //     \\           ^ ______________|'
	puts '        |   \ \_^_/ /            \\ ------------|'
	puts '        |   /         \           \\ \    \     |'
	puts '        |  | O V / O    \          \\   \    \  |'
    puts '        |   \       /     \         \\    \ ____|'	
    puts '        |   /  M M  \   \    \^^^^^^^\\  /      |'
    puts '        |   \\VVVVV//\    \        __           |'
    puts '        |    -||||-/   \   \    /     \         |'
    puts '        |     ||||	     \   \ /       /      |'
    puts '        |     ||||       \  |       /           |'
    puts '        | /\ / || \ /\    \|	    /------------ |'
    puts '        |  V  /\  V |     /      /_____________ |'
	puts '        | /\/\/\/\/\/\    /_    /               |'
	puts '        | \         /    /     /                |'
    puts '         --------------------------------------- '
	puts''
	sleep 3
  end
end

puts''
puts "       ---------------------------------------------------"
puts "       |                 * Hello *                       |"
puts "       |     What would you like to name your dragon?    |"
puts "       ---------------------------------------------------"

dragon_name = gets.chomp
puts''
puts "               *#{dragon_name} is hatching from his egg!* "
puts''
puts''
sleep 2
dragon = Dragon.new(dragon_name)

while true
  puts "   _________________________________________________________"
  puts "  |             * What would you like to do? *    (commands)|  "     
  puts "  |---------------------------------------------------------|"
  puts "  | Put to bed                                      (Bed)   |"
  puts "  | To feed                                         (Feed)  | "
  puts "  | To play with                                    (Play)  |"
  puts "  | To walk                                         (Walk)  |"
  puts "  | To toss in the air                              (Toss)  |"
  puts "  | To rock to sleep                                (Rock)  |"
  puts "  | To teach how to fly                             (Fly)   |"
  puts "  | To check health points                          (HP)    |"
  puts "  | To check experience points                      (XP)    |"
  puts "  | If you want to Attack                           (Attack)| "
  puts "   ---------------------------------------------------------" 
  input_str = gets.chomp.downcase
  
  dragon.things_to_do(input_str)  
end




