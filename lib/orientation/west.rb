class West < Orientation
    attr_accessor :x_increment
    attr_accessor :y_increment

    def initialize
        @x_increment = -1
        @y_increment = 0
    end

    def left
        South.new
    end

    def right
        North.new
    end

    def to_s
        "W"
    end
end
