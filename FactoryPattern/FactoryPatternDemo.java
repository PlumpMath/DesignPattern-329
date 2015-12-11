package FactoryPattern;

/**
 * Created by chen on 12/10/15.
 */
public class FactoryPatternDemo {
    public static void main(String[] args){
        ShapeFactory factory = new ShapeFactory();

        // get an object of Circle and call its draw method
        Shape circle = factory.getShape("CIRCLE");
        circle.draw();

        // get an object of Rectangle and call its draw method
        Shape rectangle = factory.getShape("RECTANGLE");
        rectangle.draw();

        // get an object of Square and call its draw method
        Shape square = factory.getShape("SQUARE");
        square.draw();

    }
}
