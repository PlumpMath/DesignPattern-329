package MementoPattern;

/**
 * Created by chen on 12/11/15.
 */
public class MementoPatternDemo {
    public static void main(String[] args){
        Originator originator = new Originator();
        CareTaker careTaker = new CareTaker();

        originator.setState("State #1");
        careTaker.add(originator.saveStateToMemento());

        originator.setState("State #2");
        originator.setState("State #3");
        careTaker.add(originator.saveStateToMemento());

        originator.setState("State #4");
        System.out.println("Current state: " + originator.getState());

        originator.getStateFromMemento(careTaker.get(0));
        System.out.println("#1 state: " + originator.getState());

        originator.getStateFromMemento(careTaker.get(1));
        System.out.println("#2 state: " + originator.getState());

        // index out of bounds exception, size: 2
//        originator.getStateFromMemento(careTaker.get(2));
//        System.out.println("#3 state: " + originator.getState());

        // index out of bounds exception, size: 2
//        originator.getStateFromMemento(careTaker.get(3));
//        System.out.println("#4 state: " + originator.getState());
    }
}
