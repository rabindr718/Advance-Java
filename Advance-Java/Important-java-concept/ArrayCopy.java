public class ArrayCopy {
    public static void main(String[] args) {
        int[] sourceArray = { 1, 2 ,5 ,10};
        int[] targetArray = new int[sourceArray.length];
        System.out.println("sourceArray :");
        for(int i : sourceArray)
        System.out.println(i + " ");
        System.out.println("\nTarget Array before copying: ");
        for(int i:targetArray)
            System.out.print(i + " ");
            for(int i = 0; i < sourceArray.length; i++)
            {
                targetArray[i] = sourceArray[i];
            }
            System.out.println("\nTarget Array after copying: ");
        for(int i:targetArray)
            System.out.print(i + " ");



    }
    
}
