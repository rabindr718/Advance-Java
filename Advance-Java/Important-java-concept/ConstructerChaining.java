class A
{
    A()
    {
        System.out.println("A");
    }

    public void show()
    {
        System.out.println("Show A");
    }
}

class B extends A
{
    B()
    {
        System.out.println("B");
    }
    public void show()
    {
        super.show();
        System.out.println("Show B");
    }
}

class D extends B
{
    D()
    {
        System.out.println("C");
    }
    public void show()
    {
        super.show();
        System.out.println("Show C");
    }    
}
public class ConstructerChaining {
    public static void main(String[] args) {
        D c1 = new D();

        c1.show();
    }
}
