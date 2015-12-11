package FacadePattern;

/**
 * Created by chen on 12/10/15.
 */
public class FacadePatternDemo {
    public static void main(String[] args){
        ShapeMaker shapeMaker = new ShapeMaker();

        shapeMaker.drawCircle();
        shapeMaker.drawRectangle();
        shapeMaker.drawSquare();
    }
}
