class West < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = -1
        @y_increment = 0
    end

    def left
        return South.new
    end

    def right
        return North.new
    end

    def to_s
        return "W"
    end
end
