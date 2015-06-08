# Class that handles the coordinates that a rover can occupy on a plateau
class Coordinates
    attr_accessor :x_coordinate
    attr_accessor :y_coordinate

    def initialize(x_coordinate, y_coordinate)
        @x_coordinate = x_coordinate.to_i
        @y_coordinate = y_coordinate.to_i
    end

    # The parameters are the increments (or decrements) on each coordinate
    # the method gets the current coordinates and adds the step size
    def new_step(step_x, step_y)
        Coordinates.new(@x_coordinate + step_x, @y_coordinate + step_y)
    end
end
