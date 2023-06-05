import java.util.Scanner;
public class C {

    public static void main(String [] args)
    {
        System.out.print("Enter number for radius : ");
        Scanner input = new Scanner(System.in);
        double radius = input.nextDouble();
        double area = radius * radius * 3.14159;
    System.out.println("area is " +area); 
    input.close();
    } 
}
