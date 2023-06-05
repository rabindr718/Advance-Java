public class ArrayMultidimension1 {
    public static void main(String[] args) {
        
    
    int[][] list = new int[3][];
    list[0] = new int[3];
    list[1] = new int[2];
    list[2] = new int[1];

    
    for(int i = 0; i<list.length;i++)
    {
        for(int j = 0;j<list[i].length;j++)
        {
            list[i][j] = (int)(Math.random()*100); 
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
}


    
}
