package MementoPattern;

/**
 * Created by chen on 12/11/15.
 */
public class Memento {
    private String state;

    public Memento(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

}
