package AbstractFactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public class AbstractFactoryPatternDemo {
    public static void main(String[] args){

        // get shape factory
        AbstractFactory shapeFactory = FactoryProducer.getFactory("SHAPE");
        // get Circle Object and draw
        Shape circle = shapeFactory.getShape("CIRCLE");
        circle.draw();
        // get Rectangle Object and draw
        Shape rectangle = shapeFactory.getShape("RECTANGLE");
        rectangle.draw();
        // get Square Object and draw
        Shape square = shapeFactory.getShape("SQUARE");
        square.draw();

        // get color factory
        AbstractFactory colorFactory = FactoryProducer.getFactory("COLOR");
        // get Red Object and fill
        Color red = colorFactory.getColor("RED");
        red.fill();
        // get Green Object and fill
        Color green = colorFactory.getColor("GREEN");
        green.fill();
        // get Blue Object and fill
        Color blue = colorFactory.getColor("BLUE");
        blue.fill();

    }
}
