public class GenricExample {
    public static <E> void printArray(E[]s)
    {
        for(E i:s)
        System.out.println(i);
    }
    public static void main(String[] args) {
        String [] countries = {"India","Pakistan","Nepal"};
        Integer [] numbers = {10,12,85,50};
        printArray(numbers);
        printArray(countries);
        
    }
    
}
