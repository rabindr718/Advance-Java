public class ArrayCopyExample2 {
    public static void main(String[] args) {
        int[] sourceArray = { 1, 5 ,2 ,10};
        int[] targetArray = new int[sourceArray.length];
        System.out.println(" \nSource Array");
        for(int i:sourceArray)
        System.out.print( i + " ");
        System.out.println("\n target array before coping");
        for(int i:targetArray)
        System.out.print( i + " ");
        System.arraycopy(sourceArray,0,targetArray,0,sourceArray.length);
        System.out.println("\n target array after coping");
        for(int i:targetArray)
        System.out.print( i + " ");



    }
    
}
