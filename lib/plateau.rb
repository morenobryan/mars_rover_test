class Plateau
    def initialize(x_size, y_size)
        @x_size = x_size
        @y_size = y_size
    end

    def self.can_walk(rover)
        case rover.orientation
        when 0
            rover.y_position == @y_size ? (return false) : (return true)
        when 90
            rover.x_position == @x_size ? (return false) : (return true)
        when 180
            rover.y_position == 0 ? (return false) : (return true)
        when 270
            rover.x_position == 0 ? (return false) : (return true)
        end
    end
end
