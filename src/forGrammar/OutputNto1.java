package forGrammar;

import java.util.Scanner;

public class OutputNto1 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();

		for (int i = N; i > 0; i--) {
			System.out.println(i);
		}

		sc.close();
	}

}
