module Bordered
    attr_accessor :color
    attr_accessor :width
end

module Scrollable
    def position
        @position ||= 0
    end
    def scroll offset
        @position = position + offset
    end
end

class Widget
    attr_accessor :content
    def initialize content
        @content = content
    end
end

# main
widget = Widget.new "New Window"
widget.extend(Bordered)
widget.extend(Scrollable)

widget.color = :blue
widget.scroll 3

puts widget.kind_of? Bordered       #true
puts widget.kind_of? Scrollable     #true
puts widget.color                   #blue
puts widget.position                #3