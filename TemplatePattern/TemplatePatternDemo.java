package TemplatePattern;

/**
 * Created by chen on 12/11/15.
 */
public class TemplatePatternDemo {
    public static void main(String[] args){
        Game game = new Tennis();
        game.play();
        System.out.println();
        game = new Football();
        game.play();
    }
}
