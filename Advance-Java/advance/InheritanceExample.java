 import java.util.Scanner;
 class Person {
    private int age;
    private String name;
    public void setage(int a)
    {
        age = a;
    }
    public void setname(String n )
    {
        name = n;
    } 
    public int getage()
    {
        return (age);
    }
    public String getname()
    {
        return (name);
    }
}
class Student extends Person{
    private int rollno;
    public void setRollno(int r)
    {
        rollno = r;
    }
    public int getRollno()
    {
        return(rollno);
    }
    public void printArray(String[] countries) {
    }
}
public class InheritanceExample {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Student s1 = new Student();
        System.out.print("Enter Rollno : ");
        int x = input.nextInt();
        s1.setRollno(x);
        System.out.print("Enter age : ");
        int z = input.nextInt();
        s1.setage(z);
        System.out.print("Enter name : ");
        String y =input.nextLine();
        s1.setname(y);
        System.out.println("Rollno: " +s1.getRollno());
        System.out.println("NAME: " +s1.getname());
        System.out.println("AGE: " +s1.getage());
        input.close();


    }
    
}
