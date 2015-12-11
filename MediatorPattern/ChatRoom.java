package MediatorPattern;

/**
 * Created by chen on 12/11/15.
 */
public class ChatRoom {
    public static void showMessage(User user, String message){
        System.out.println(new java.util.Date().toString() + " [" + user.getName() + "] : " + message);
    }
}
