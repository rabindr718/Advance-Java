package Gtu_Practical;

public class Practical_007 {
    public static void main(String[] args) {
		
		String numberPlate = ""+(char)(Math.random()*26+65);
		numberPlate += (char)(Math.random()*26+65);
		numberPlate += (char)(Math.random()*26+65);
		
		String digits = (""+ Math.random()).substring(3, 7);
		System.out.println("Generated number plate value is: " 
							+ numberPlate + " " +digits);		

		numberPlate += (int)(Math.random()*10);
		numberPlate += (int)(Math.random()*10);
		numberPlate += (int)(Math.random()*10);
		numberPlate += (int)(Math.random()*10);
		
		double num = Math.random();
		System.out.println(num);
		String str = ""+num;
		System.out.println(str);
		
	}	
    
}
