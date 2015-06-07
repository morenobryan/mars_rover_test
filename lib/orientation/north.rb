class North < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = 0
        @y_increment = 1
    end

    def left
        return West.new
    end

    def right
        return East.new
    end

    def to_s
        return "N"
    end
end
