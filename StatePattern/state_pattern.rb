
class StatePattern
    def initialize(state)
        if state.eql? 'start'
            @do_action = lambda{puts 'In start state'}
        elsif state.eql? 'stop'
            @do_action = lambda{puts 'In stop state'}
        end
    end

    def do
        @do_action.call()
    end

end

start = StatePattern.new("start")
stop = StatePattern.new("stop")
start.do
stop.do
