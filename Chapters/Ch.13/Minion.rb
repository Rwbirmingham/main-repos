
class Minion

  def initialize(name)
    @name = name
    @sound = "Pew, pew!"
  end

  def arm(weapon, sound)
    @weapon = weapon
    @sound = sound
  end

  def attack
    puts "#{ @name } is attacking..."
    puts @sound
  end

  def say_name
    puts @name
  end
end

class Borg < Minion

  @@all_borg = []

  def initialize(name)
    super(name)
    @@all_borg << self
  end

  def self.message_collective(msg)
    @@all_borg.each { |m| m.tell(msg)}
  end

  def say_name
    puts "We are borg."
  end

  def tell(msg)
    puts "#{ @name } got it, #{ msg }"
  end

end

mob = []
bob = Minion.new("Bob")
mob << bob
kevin = Minion.new("Kevin")
kevin.arm("Bomb", "Boom!")
mob << kevin
mob << Minion.new("Bruce")
bob.arm("Hammer", "Thwack!")

mob.each { |m| m.attack }

collective = []
seven_of_nine = Borg.new("Seven of Nine")
seven_of_nine.say_name
five_of_six = Borg.new("Five of Six")
five_of_six.say_name
collective << seven_of_nine
collective << five_of_six
collective.each { |b| b.attack }

joint_strike_force = mob + collective
joint_strike_force.each { |m| m.attack }
bjorn = Borg.new("Bjorn")

Borg.message_collective("super secret message")





