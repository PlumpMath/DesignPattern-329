package AbstractFactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public class FactoryProducer {
    public static AbstractFactory getFactory(String factoryType){
        if(factoryType.equalsIgnoreCase("SHAPE")){
            return new ShapeFactory();
        }else if(factoryType.equalsIgnoreCase("COLOR")){
            return new ColorFactory();
        }
        return null;
    }
}
