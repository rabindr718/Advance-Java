import java.util.Scanner;
public class MethodExample {
    public static void main(String[] args) {
        number();
          
    }
        public static void number()
        {
               System.out.println("Enter number");
               Scanner sc = new Scanner(System.in);
               int num1 = sc.nextInt();
               if(num1 % 2 == 0)
               {
                System.out.println( + num1 + " is Even num "); 
               }
               else{
                System.out.println( + num1 + " is odd num "); 
               }
               sc.close();
        }
    
    
}
