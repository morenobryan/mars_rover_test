class Coordinates
    attr_accessor :x_coordinate
    attr_accessor :y_coordinate

    def initialize(x_coordinate, y_coordinate)
        @x_coordinate = x_coordinate.to_i
        @y_coordinate = y_coordinate.to_i
    end

    def new_step(step_x, step_y)
        return Coordinates.new(@x_coordinate + step_x, @y_coordinate + step_y)
    end
end
