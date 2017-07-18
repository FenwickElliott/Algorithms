class Node
    attr_accessor :up, :left, :right, :val, :looking_for

    def initialize(val)
        @val = val
    end

    def printn
        print "Node: #{self.name}, "
        print "Up: #{up.name}, " if self.up
        print "Left: #{left.name}, " if self.left
        print "Right: #{right.name}" if self.right
    end
end