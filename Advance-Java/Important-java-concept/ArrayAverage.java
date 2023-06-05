/* Write a problem is to read 100 numbers, get the average of these numbers, and find the number of the items
greater than the average.*/


public class ArrayAverage {
    public static void main(String[] args) {
        int[] list = new int [100];
        for(int i = 0; i < list.length;i++)
        list[i] = i;
        double add = 0;
         for(int i:list)
         {
            add = add + list[i];
         }
         double avg = add/100;
         System.out.println(" Average = " + avg );
         System.out.println("Number greater than average" );
         for(int i:list)
         {
             if(list[i] > avg)
             System.out.println(list[i] + " " );

         }
        
    }
    
}
