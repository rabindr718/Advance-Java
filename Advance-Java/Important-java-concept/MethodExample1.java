import java.util.Scanner;
public class MethodExample1 {
    public static void main(String[] args) {
        System.out.println("Enter number");
        Scanner Sc = new Scanner(System.in);
        int num1 = Sc.nextInt();
        int num2 = Sc.nextInt();
        
        int k = max(num1 , num2);
        System.out.println( + k + "is Greater number");
        Sc.close();
        
    }
    public static int max(int a ,int b)
    {
     if(a > b)
     {
      return  a; 
     }
     else
     return  b;
    }
    
    
}
