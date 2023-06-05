class circle
{
    double radius;
    circle (){
      radius = 5;
        }

circle(double d)
{
    radius = d;
}
}
public class ConstructerExample {
    public static void main(String[] args) {
         
        circle c1 = new circle(10.5);
        circle c2 = new circle();
        System.out.println(c1.radius);
        System.out.println(c2.radius);
    }
    
}
