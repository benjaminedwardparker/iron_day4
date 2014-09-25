# Define a Robot class
# A robot has a name

# A robot should have a method called 'say_hi' and it should return "Hi!"

# A robot should have a method called 'say_name' and it should return
# "My name is X" where X is the robot's name

class Robot
  def initialize(name)
    @name = name
  end
  def say_name
    puts "My name is #{@name}"
  end
  def say_hi
    puts "Hi!"
  end
end

# Define a BendingUnit class
# A BendingUnit inherits from Robot
# A bending unit has a method called 'bend'
# The bend method has one argument 'object_to_bend'
# The bend method should put to the console "Bend X!" where X is object_to_bend

class BendingUnit < Robot
  def bend(object_to_bend)
    puts "Bend #{object_to_bend}!"
  end
end

# Define an ActorUnit class
# An ActorUnit inherits from Robot
# An ActorUnit has a method called 'change_name'
# The 'change_name' method accepts an argument 'new_name'
# The 'change_name' method changes the name property of Robot to 'new_name'

class ActorUnit < Robot
  def change_name(new_name)
    @name = new_name
  end
end

my_robot = Robot.new("Generic Robot")
my_robot.say_name
my_robot.say_hi
puts ""

bender_robot = BendingUnit.new("Bender")
puts bender_robot.say_name
puts "I am about to"
bender_robot.bend("Steel")
puts ""
actor_robot = ActorUnit.new("Leo")
puts actor_robot.say_name
actor_robot.change_name("Leo DiCaprio")
puts actor_robot.say_name
