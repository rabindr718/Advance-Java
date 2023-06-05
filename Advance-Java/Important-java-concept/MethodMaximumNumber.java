import java.util.Scanner;
public class MethodMaximumNumber {
    public static void main(String[]args)
    {
        System.out.println("Enter Two number");
        Scanner sc = new Scanner(System.in);
        int num1 = sc.nextInt();
        int num2 = sc.nextInt();
        max(num1,num2);
        sc.close();
    }
    public static void max(int a,int b)
    {
        if(a > b)
        {
            System.out.println( + a + " Greater than = " +b);
        }
        else
        {
            System.out.println( + b + " Greater than = " +a);
        }
    }
    
}
