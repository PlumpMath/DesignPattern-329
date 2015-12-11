package AbstractFactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public class ShapeFactory extends AbstractFactory {
    Color getColor(String colorType) {
        return null;
    }

    Shape getShape(String shapeType) {
        if(shapeType == null){
            return null;
        }

        if(shapeType.equalsIgnoreCase("CIRCLE")){
            return new Circle();
        }else if(shapeType.equalsIgnoreCase("RECTANGLE")){
            return new Rectangle();
        }else if(shapeType.equalsIgnoreCase("SQUARE")){
            return new Square();
        }

        return null;
    }
}
