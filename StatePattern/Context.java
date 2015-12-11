package StatePattern;

/**
 * Created by chen on 12/9/15.
 */
public class Context {
    private State state;

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }
}
