package VisitorPattern;

/**
 * Created by chen on 12/10/15.
 */
public interface ComputerPart {
    public void accept(ComputerPartVisitor computerPartVisitor);
}
