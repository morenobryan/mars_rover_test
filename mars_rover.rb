# Importing all the necessary files for the application
require './lib/rover.rb'
require './lib/plateau.rb'
require './lib/orientation.rb'
require './lib/coordinates.rb'
require './lib/orientation/north.rb'
require './lib/orientation/east.rb'
require './lib/orientation/south.rb'
require './lib/orientation/west.rb'
require './lib/commands.rb'
require './lib/commands/rotate_left.rb'
require './lib/commands/rotate_right.rb'
require './lib/commands/go_forward.rb'

# Open the file that has all the instructions, coordinates and instantiation of the plateau
file = File.open('Inputs.txt')

# Reads the first line of the file and gets the plateau limits from it
first_line = file.readline
x_limit, y_limit = first_line.split(" ")
# Instantiate the plateau based on the limits from the first line
plateau = Plateau.new(x_limit, y_limit)

# Separates the remaining files on lines of two groups: initial coordinates and instructions
file.each_slice(2) { |coordinates, instructions|
    # Instantiate the rover on the created plateau and on the defined coordinates from the line
    x_initial, y_initial, initial_orientation = coordinates.split(" ")
    mars_rover = Rover.new(x_initial.to_i, y_initial.to_i, initial_orientation, plateau)
    # Separates each instruction and processes them, one by one
    instructions = instructions.gsub(/\n/,"")
    instructions.split("").each do |instruction|
        mars_rover.walk(instruction)
    end
    # Print the current coordinates and orientation of the rover after the instructions have been processed
    print "#{mars_rover.coordinates.x_coordinate} #{mars_rover.coordinates.y_coordinate} #{mars_rover.orientation.orientation.to_s} \n";
}
