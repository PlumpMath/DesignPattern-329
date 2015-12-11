package VisitorPattern;

/**
 * Created by chen on 12/10/15.
 */
public class Keyboard implements ComputerPart {
    public void accept(ComputerPartVisitor computerPartVisitor) {
        computerPartVisitor.visit(this);
    }
}
