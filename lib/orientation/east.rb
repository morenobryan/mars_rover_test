class East < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = 1
        @y_increment = 0
    end

    def left
        North.new
    end

    def right
        South.new
    end

    def to_s
        "E"
    end
end
