public class ArrayMultidimension {
    public static void main(String[] args) {
        int[][]list = {
            {1,3,5,6,8,9},
            {5,8,3,4,6},
            {8,7,5,6,},
            {5,3,2},
            {9,2},
            {7}
        };
        System.out.println("matrix is");
        for(int i = 0 ;i <list.length;i++)
        {
            for(int j = 0 ;j <list[i].length;j++)
            {
                System.out.print(list[i][j] + " ");
            }
            System.out.println("");
        }
    }
    
}
