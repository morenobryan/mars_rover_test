class Rover
    attr_accessor :x_position
    attr_accessor :y_position
    attr_accessor :orientation

    def initialize(x_position, y_position, orientation)
        @x_position = x_position
        @y_position = y_position
        @orientation = convert_orientation(orientation)
    end

    def walk(instruction)
        if instruction == "L" or instruction == "R"
            rotate(instruction)
            #print "#{x_position} #{y_position} #{orientation}"
            #puts
        elsif instruction == "M"
            go_forward
            #print "#{x_position} #{y_position} #{orientation}"
            #puts
        end
    end

    def rotate(direction)
        case direction
        when "L"
            if @orientation == 0
                @orientation = 270
            else
                @orientation -= 90
            end
        when "R"
            if @orientation == 270
                @orientation = 0
            else
                @orientation += 90
            end
        else
            throw("Nil")
        end
    end

    def go_forward
        if Plateau::can_walk(self)
            case @orientation
            when 0
                @y_position += 1
            when 90
                @x_position += 1
            when 180
                @y_position -= 1
            when 270
                @x_position -= 1
            end
        end
    end

    def convert_orientation(orientation)
        case orientation
        when "N"
            @orientation = 0
        when "E"
            @orientation = 90
        when "S"
            @orientation = 180
        when "W"
            @orientation = 270
        else
            throw("Nil")
        end
    end
end
