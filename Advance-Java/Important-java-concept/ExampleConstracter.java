import java .util.Scanner;
class circle1{
     double radius;
    circle1(){

    }
    circle1(double d){
        radius = d;
    }
    double getArea(){ 
        return (Math.PI * radius * radius);
    }
    double getPerimeter(){ 
        return (2 * Math.PI * radius);
    }
    void setRadius(double newRadius){ 
        radius = newRadius;
    }
}


public class ExampleConstracter {

    public static void main(String[] args) { 
        System.out.println("Enter radius");
        Scanner sc = new Scanner(System.in);
        double n = sc.nextDouble();
        circle1 c1 = new circle1(n);
        circle1 c2 = new circle1(5);
        System.out.println("radius " + c1.radius);
        System.out.println("Circle 1 area is: " + c1.getArea());
        System.out.println("radius " + c2.radius);
        c1.setRadius(5);
        System.out.println("radius " + c1.radius);
        System.out.println("Circle 1 area is: " + c1.getArea());
        System.out.println("Circle 2 area is: " + c2.getArea());
        sc.close();
        
    }
    
}
