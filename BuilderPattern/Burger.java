package BuilderPattern;

/**
 * Created by chen on 12/11/15.
 */
public abstract class Burger implements Item {
    public Packing packing() {
        return new Wrapper();
    }

    public abstract float price();
}
