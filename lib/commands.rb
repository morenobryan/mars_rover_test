class Commands
    def execute
        raise "Not implemented"
    end

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
