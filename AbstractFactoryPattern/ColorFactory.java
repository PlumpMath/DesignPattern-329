package AbstractFactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public class ColorFactory extends AbstractFactory {
    Color getColor(String colorType) {
        if(colorType == null){
            return null;
        }

        if(colorType.equalsIgnoreCase("RED")){
            return new Red();
        }else if(colorType.equalsIgnoreCase("GREEN")){
            return new Green();
        }else if(colorType.equalsIgnoreCase("BLUE")){
            return new Blue();
        }
        return null;
    }

    Shape getShape(String shapeType) {
        return null;
    }
}
