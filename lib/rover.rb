class Rover
    attr_accessor :coordinates
    attr_accessor :orientation
    attr_accessor :plateau

    def initialize(x_position, y_position, orientation, plateau)
        @coordinates = Coordinates.new(x_position, y_position)
        @orientation = Orientation.new(orientation)
        @plateau = plateau
    end

    def walk(instruction)
        case instruction
        when "L"
            rotate_left
        when "R"
            rotate_right
        when "M"
            go_forward
        end
    end

    def rotate_left
        @orientation.rotate_left
    end

    def rotate_right
        @orientation.rotate_right
    end

    def go_forward
        if plateau.can_go_here(@coordinates.new_step(@orientation.orientation.x_increment, @orientation.orientation.y_increment))
            @coordinates = @coordinates.new_step(@orientation.orientation.x_increment, @orientation.orientation.y_increment)
        end
    end
end
