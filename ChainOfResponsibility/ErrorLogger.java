package ChainOfResponsibility;

/**
 * Created by chen on 12/11/15.
 */
public class ErrorLogger extends AbstractLogger {
    public ErrorLogger(int level) {
        this.level = level;
    }

    protected void write(String message) {
        System.out.println("Error Console: " + message);
    }
}
