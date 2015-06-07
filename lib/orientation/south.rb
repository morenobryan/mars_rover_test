class South < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = 0
        @y_increment = -1
    end

    def left
        return East.new
    end

    def right
        return West.new
    end

    def to_s
        return "S"
    end
end
