package ObserverPattern;

/**
 * Created by chen on 12/10/15.
 */
public class Subject {
    private java.util.List<Observer> observers = new java.util.ArrayList<Observer>();
    private int state;

    public int getState(){
        return state;
    }

    public void setState(int state){
        this.state = state;
        notifyAllObservers();
    }

    public void attach(Observer observer){
        observers.add(observer);
    }

    public void notifyAllObservers() {
        for (Observer o : observers){
            o.update();
        }
    }
}
