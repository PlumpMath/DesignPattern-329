package AdapterPattern;

/**
 * Created by chen on 12/10/15.
 */
public class Mp4Player implements AdvancedMediaPlayer {
    public void playVlc(String fileName) {
        // do nothing
    }

    public void playMp4(String fileName) {
        System.out.println("Playing mp4. Name:" + fileName);
    }
}
