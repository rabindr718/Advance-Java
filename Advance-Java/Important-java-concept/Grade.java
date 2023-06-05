import java.util.Scanner;
public class Grade {
    public static void main(String [] args)
    {
        System.out.print("Enter marks : ");
        Scanner input = new Scanner(System.in);
        int marks = input.nextInt();
        if(marks>300)
        {
            System.out.println("first Division");
        }
        else if(marks < 300 && marks > 200)
        {
            System.out.println("Second Division");
        }
        else if(marks < 200 && marks > 100)
        {
            System.out.println("Third Division");
        }
        else 
        {
           System.out.println("fail");
        }
        input.close();

    }
}
