package MementoPattern;

/**
 * Created by chen on 12/11/15.
 */
public class CareTaker {
    private java.util.List<Memento> mementos = new java.util.ArrayList<Memento>();

    public void add(Memento memento){
        mementos.add(memento);
    }

    public Memento get(int index){
        return mementos.get(index);
    }
}
