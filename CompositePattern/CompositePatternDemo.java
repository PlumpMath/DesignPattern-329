package CompositePattern;

/**
 * Created by chen on 12/10/15.
 */
public class CompositePatternDemo {
    public static void main(String[] args){
        Employee CEO = new Employee("John", "CEO", 30000);

        Employee headSales = new Employee("Robert", "Head Sales", 20000);
        Employee headIT = new Employee("Jason", "CTO", 20000);

        Employee sales1 = new Employee("James", "Sales", 10000);
        Employee sales2 = new Employee("Kate", "Sales", 10000);

        Employee se1 = new Employee("Julie", "IT", 10000);
        Employee se2 = new Employee("Frank", "IT", 10000);

        CEO.add(headSales);
        CEO.add(headIT);

        headSales.add(sales1);
        headSales.add(sales2);

        headIT.add(se1);
        headIT.add(se2);

        // print all employees of the organization
        System.out.println(CEO);
        for(Employee headEmployee : CEO.getSubodinates()){
            System.out.println(headEmployee);

            for(Employee employee : headEmployee.getSubodinates()){
                System.out.println(employee);
            }
        }
    }
}
