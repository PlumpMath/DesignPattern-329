package VisitorPattern;

/**
 * Created by chen on 12/10/15.
 */
public class VisitorPatternDemo {
    public static void main(String[] args){
        ComputerPart computer = new Computer();
        computer.accept(new ComputerPartDisplayVisitor());
    }
}
