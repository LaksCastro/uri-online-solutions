import java.io.IOException;
import java.util.Scanner;

public class Main {

  public static void main(String[] args) throws IOException {
    Scanner input = new Scanner(System.in);

    String name = input.nextLine();

    System.out.println(name.length() > 80 ? "NO" : "YES");
  }
}
