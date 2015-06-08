# Defines the plateau, its size and if a rover isn't trespassing its boundaries
class Plateau
    def initialize(x_size, y_size)
        @x_size = x_size.to_i
        @y_size = y_size.to_i
    end


    def can_go_here(coordinates)
        if coordinates.x_coordinate <= @x_size and coordinates.y_coordinate <= @y_size
            true
        else
            false
        end
    end
end
