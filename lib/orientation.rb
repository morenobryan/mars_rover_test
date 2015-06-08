# Class that defines the generic orientation of the rover
class Orientation
    attr_accessor :orientation

    def initialize(orientation)
        case orientation
        when "N"
            @orientation = North.new
        when "E"
            @orientation = East.new
        when "S"
            @orientation = South.new
        when "W"
            @orientation = West.new
        end
    end

    def rotate_left
        @orientation = @orientation.left
    end

    def rotate_right
        @orientation = @orientation.right
    end
end
