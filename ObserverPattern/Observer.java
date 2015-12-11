package ObserverPattern;

/**
 * Created by chen on 12/10/15.
 */
public abstract class Observer {
    protected Subject subject;
    public abstract void update();
}
