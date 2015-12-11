class Robot
    def initialize(n)
        @callme = lambda{|a| n*a}
    end

    def maker(a)
        @callme.call(a)
    end
end


doubleMaker = Robot.new(2)
halfMaker = Robot.new(0.5)
puts doubleMaker.maker(4)
puts halfMaker.maker(17)