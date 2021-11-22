package ifGrammar;

import java.util.Scanner;

public class IfTimeEarly {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int H, M;
		H = sc.nextInt();
		M = sc.nextInt();

		M = M - 45;
		if (M < 0 && H > 0) {
			System.out.print((H - 1) % 24);
			System.out.println(" " + (M + 60));
		} else if (M < 0 && H == 0) {
			H = 23;
			System.out.print(H);
			System.out.println(" " + (M + 60));
		} else {
			System.out.print(H % 24);
			System.out.println(" " + M);
		}
		sc.close();
	}

}
