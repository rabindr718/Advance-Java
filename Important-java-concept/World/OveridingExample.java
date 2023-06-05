package World;
class D
{
    public void f1(int x)
    {
        System.out.println ("class A");
        
    }
}
class  F extends D
{
    public void f1(int x)
    {
        
        System.out.println ("class B");
    }
}
public class OveridingExample {
    public static void main(String[] args) {
        F obj = new F ();
        obj.f1(5);
    }
    
}
