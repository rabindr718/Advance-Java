package World;
class A
{
    public void f1(int x)
    {
        System.out.println ("class A");
        x = x + 50;
        System.out.println (x);
    }
}
class  B extends A
{
    public void f1(int x,int y)
    {
        x = x + y;
        System.out.println ("class B");
        
        System.out.println (x);
    }
}
public class OverlodingExample {
    public static void main(String[] args) {
        B obj = new B ();
        obj.f1(5);
        obj.f1(5,10);



    }
    
}
