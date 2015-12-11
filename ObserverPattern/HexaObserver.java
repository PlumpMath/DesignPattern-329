package ObserverPattern;

/**
 * Created by chen on 12/10/15.
 */
public class HexaObserver extends Observer {
    public HexaObserver(Subject subject){
        this.subject = subject;
        this.subject.attach(this);
    }

    public void update() {
        System.out.println("Hex String: " + Integer.toHexString(subject.getState()));
    }
}
