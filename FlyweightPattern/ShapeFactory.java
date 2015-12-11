package FlyweightPattern;

/**
 * Created by chen on 12/11/15.
 */
public class ShapeFactory {
    private static final java.util.HashMap<String, Shape> circleMap = new java.util.HashMap();

    public static Shape getCircle(String color) {
        Circle circle = (Circle)circleMap.get(color);

        if(circle == null) {
            circle = new Circle(color);
            circleMap.put(color, circle);
            System.out.println("Creating circle of color : " + color);
        }
        return circle;
    }
}
