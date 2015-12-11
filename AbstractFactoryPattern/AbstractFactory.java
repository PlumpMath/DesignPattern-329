package AbstractFactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public abstract class AbstractFactory {
    abstract Color getColor(String colorType);
    abstract Shape getShape(String shapeType);
}
