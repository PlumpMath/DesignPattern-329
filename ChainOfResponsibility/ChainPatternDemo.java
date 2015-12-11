package ChainOfResponsibility;

/**
 * Created by chen on 12/11/15.
 */
public class ChainPatternDemo {
    private static AbstractLogger getChainOfLoggers(){
        AbstractLogger consoleLogger = new ConsoleLogger(AbstractLogger.INFO);
        AbstractLogger errorLogger = new ErrorLogger(AbstractLogger.ERROR);
        AbstractLogger fileLogger = new FileLogger(AbstractLogger.DEBUG);

        errorLogger.setNextLogger(fileLogger);
        fileLogger.setNextLogger(consoleLogger);

        return errorLogger;
    }

    public static void main(String[] args){
        AbstractLogger loggerChain = getChainOfLoggers();

        loggerChain.logMessage(AbstractLogger.INFO, "This is information");

        loggerChain.logMessage(AbstractLogger.DEBUG, "This is debug information");

        loggerChain.logMessage(AbstractLogger.ERROR, "This is error information");
    }
}
