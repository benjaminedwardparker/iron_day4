class SpaceShip

  def initialize
    # puts "Building a space ship"
    @message = "Howdy!"
  end

  def name
    "Planet Express"
  end

  def change
    @message = "Good bye!"
  end

  def foobar(x)
    "#{name} #{x}"
  end

  def whatever
    @message
  end

end

ship = SpaceShip.new

ship1 = SpaceShip.new
ship2 = SpaceShip.new
p ship1.whatever
p ship2.whatever
ship1.change
p ship1.whatever
p ship2.whatever

# # p ship1.name
# p ship.foobar("ruby")
#
# ship2 = SpaceShip.new
# p ship2.name
