import java.util.Scanner;
public class ArrayTwoDimension {
    public static void main(String[] args) {
        int[][] list = new int[3][3];
        Scanner input = new Scanner(System.in);
        for(int i = 0; i<list.length;i++)
        {
            for(int j = 0;j<list[i].length;j++)
            {
                System.out.println("Enter number");
                list[i][j] = input.nextInt();
            }
        }
        System.out.println("Matrix is: ");
        for(int i=0 ; i < list.length ; i++)
        {
            for(int j=0 ; j < list[i].length ; j++)
            {
                System.out.print(list[i][j] + " ");
            }
            System.out.println("");
        }
        input.close();
    }
    
}
