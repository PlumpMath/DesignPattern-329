package PrototypePattern;

/**
 * Created by chen on 12/10/15.
 */
public abstract class Shape implements java.lang.Cloneable{

    private String id;
    protected String type;

    abstract void draw();

    protected Object clone() {
        Object clone = null;

        try{
            clone = super.clone();
        } catch (CloneNotSupportedException e){
            e.printStackTrace();
        }

        return clone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

}
