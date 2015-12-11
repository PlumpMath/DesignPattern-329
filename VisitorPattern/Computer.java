package VisitorPattern;

/**
 * Created by chen on 12/10/15.
 */
public class Computer implements ComputerPart {

    ComputerPart[] parts;

    public Computer() {
        this.parts = new ComputerPart[]{new Mouse(), new Keyboard(), new Monitor()};
    }

    public void accept(ComputerPartVisitor computerPartVisitor) {
        for (ComputerPart part : parts){
            part.accept(computerPartVisitor);
        }
        computerPartVisitor.visit(this);
    }
}
