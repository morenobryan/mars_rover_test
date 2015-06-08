class North < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = 0
        @y_increment = 1
    end

    def left
        West.new
    end

    def right
        East.new
    end

    def to_s
        "N"
    end
end
