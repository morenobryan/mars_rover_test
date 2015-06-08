# Handles the rover itself, and all its properties and behaviors
class Rover
    attr_accessor :coordinates
    attr_accessor :orientation
    attr_accessor :plateau

    # Initializing the rover and creating its coordinates on space, the specfic orientation
    # and deploying it in an already created plateau
    def initialize(x_position, y_position, orientation, plateau)
        @coordinates = Coordinates.new(x_position, y_position)
        @orientation = Orientation.new(orientation)
        @plateau = plateau
    end

    # 'walk' it's a generic command interpreter, and will execute all the valid commands you throw into it
    def walk(instruction)
        command = Commands.new.parse_string_command(instruction)
        command.execute(self)
    end

    # Orders the current orientation to return the orientation to the left
    def rotate_left
        @orientation.rotate_left
    end

    # Orders the current orientation to return the orientation to the right
    def rotate_right
        @orientation.rotate_right
    end

    # Orders the rover to go forward, calculating the step size from the given orientation, if the movement
    # doesn't go outside the boundaries of the plateau
    def go_forward
        if plateau.can_go_here(@coordinates.new_step(@orientation.orientation.x_increment, @orientation.orientation.y_increment))
            @coordinates = @coordinates.new_step(@orientation.orientation.x_increment, @orientation.orientation.y_increment)
        end
    end
end
