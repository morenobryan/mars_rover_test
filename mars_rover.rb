require './lib/rover.rb'
require './lib/plateau.rb'

file = File.open('Inputs.txt')

first_line = file.readline
x_limit, y_limit = first_line.split(" ")
plateau = Plateau.new(x_limit, y_limit)

file.each_slice(2) { |coordinates, instructions|
    x_initial, y_initial, orientation = coordinates.split(" ")
    mars_rover = Rover.new(x_initial.to_i, y_initial.to_i, orientation)
    instructions.split("").each do |instruction|
        mars_rover.walk(instruction)
    end
    print "X: #{mars_rover.x_position}, Y: #{mars_rover.y_position}, Orientation: #{mars_rover.orientation} \n";
}
