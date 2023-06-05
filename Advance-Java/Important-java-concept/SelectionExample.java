import java .util.Scanner;
public class SelectionExample {
    public static void main(String [] args)
    {
        System.out.print("Enetr number ");
        Scanner input = new Scanner(System.in);
        int num = input.nextInt();
        if(num % 2 == 0)
        {
            System.out.println( + num+ " is even num " );
        }
        else
        {
            System.out.println( + num+ " is odd num ");
        }
        input.close();
    }
    
}
