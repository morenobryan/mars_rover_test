require './lib/rover.rb'
require './lib/plateau.rb'
require './lib/orientation.rb'
require './lib/coordinates.rb'
require './lib/Orientation/north.rb'
require './lib/Orientation/east.rb'
require './lib/Orientation/south.rb'
require './lib/Orientation/west.rb'

file = File.open('Inputs.txt')

first_line = file.readline
x_limit, y_limit = first_line.split(" ")
plateau = Plateau.new(x_limit, y_limit)

file.each_slice(2) { |coordinates, instructions|
    x_initial, y_initial, initial_orientation = coordinates.split(" ")
    mars_rover = Rover.new(x_initial.to_i, y_initial.to_i, initial_orientation, plateau)
    instructions.split("").each do |instruction|
        mars_rover.walk(instruction)
    end
    print "#{mars_rover.coordinates.x_coordinate} #{mars_rover.coordinates.y_coordinate} #{mars_rover.orientation.orientation.to_s} \n";
}
