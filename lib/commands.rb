# Class to handle the generic commands that a rover can execute
class Commands
    # If the execute command hasn't been implemented on the child class
    def execute
        raise "Not implemented"
    end

    # Translates the string commands into "rover readable" commands
    def parse_string_command(instruction)
        case instruction
        when "L"
            return RotateLeft.new
        when "R"
            return RotateRight.new
        when "M"
            return GoForward.new
        end
    end
end
