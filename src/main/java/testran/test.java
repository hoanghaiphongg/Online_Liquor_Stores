package testran;
import ranstring.rand;
public class test {
public static void main(String[] args) {
	rand r = new rand();
	String s = r.generateRandomString(8);
	System.out.println(s);
}
}
