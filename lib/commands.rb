class Commands
    def execute
        raise "Not implemented"
    end

    def parse_string_command(instruction)
        case instruction
        when "L"
            RotateLeft.new
        when "R"
            RotateRight.new
        when "M"
            GoForward.new
        end
    end
end
