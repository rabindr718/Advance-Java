import java.util.Scanner;
public class Method {
    public static void main(String [] args) 
    {
        System.out.println("Enter two number");
        Scanner input = new Scanner(System.in);
        int num1 = input.nextInt();
        int num2 = input.nextInt();
        System.out.println("Before Swapping num1 = " + num1 + " and num2 = " +num2);
        swappMethod(num1,num2);
        input.close();
       

    }
    public static void swappMethod(int a ,int b)
    {
      int temp = a;
      a = b;
      b = temp;
      System.out.println("After Swapping num1 = " + a + " and num2 = " +b);
      
     
    }

    
}
