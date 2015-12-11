package BuilderPattern;

/**
 * Created by chen on 12/11/15.
 */
public abstract class ColdDrink implements Item {
    public Packing packing() {
        return new Bottle();
    }

    public abstract float price();
}
