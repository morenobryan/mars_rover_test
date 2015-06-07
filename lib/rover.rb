class Rover
    attr_accessor :x_position
    attr_accessor :y_position
    attr_accessor :orientation

    def initialize(x_position, y_position, orientation)
        @x_position = x_position
        @y_position = y_position
        @orientation = orientation
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
        case @orientation
        when "N"
            @orientation = "W"
        when "W"
            @orientation = "S"
        when "S"
            @orientation = "E"
        when "E"
            @orientation = "N"
        end
    end

    def rotate_right
        case @orientation
        when "N"
            @orientation = "E"
        when "E"
            @orientation = "S"
        when "S"
            @orientation = "W"
        when "W"
            @orientation = "N"
        end
    end

    def go_forward
        if Plateau::can_walk(self)
            case @orientation
            when "N"
                @y_position += 1
            when "E"
                @x_position += 1
            when "S"
                @y_position -= 1
            when "W"
                @x_position -= 1
            end
        end
    end
end
