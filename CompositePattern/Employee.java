package CompositePattern;

/**
 * Created by chen on 12/10/15.
 */
public class Employee {
    private String name;
    private String dept;
    private int salary;
    private java.util.List<Employee> subodinates;

    public Employee(String name, String dept, int salary) {
        this.name = name;
        this.dept = dept;
        this.salary = salary;
        subodinates = new java.util.ArrayList<Employee>();
    }

    public void add(Employee e){
        subodinates.add(e);
    }

    public void remove(Employee e){
        subodinates.remove(e);
    }

    public java.util.List<Employee> getSubodinates(){
        return subodinates;
    }

    public String toString(){
        return "Employee: [name: "+ name + ", dept: " + dept + ", salary: " + salary +"]";
    }
}
