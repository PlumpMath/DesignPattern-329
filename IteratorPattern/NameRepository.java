package IteratorPattern;

/**
 * Created by chen on 12/10/15.
 */
public class NameRepository implements Container {
    public String names[] = {"Jason", "Frank", "Julie", "James"};

    public Iterator getIterator() {
        return new NameIterarator();
    }

    private class NameIterarator implements Iterator{
        int index;

        public boolean hasNext() {
            if(index < names.length) {
                return true;
            }
            return false;
        }

        public Object next() {
            if(this.hasNext()){
                return names[index++];
            }
            return null;
        }
    }
}
