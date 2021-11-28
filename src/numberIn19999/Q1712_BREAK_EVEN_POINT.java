package numIn19999;

import java.util.Scanner;

public class Q1712_BREAK_EVEN_POINT {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int A = sc.nextInt();
		int B = sc.nextInt();
		int C = sc.nextInt();
		int cnt = 0;
		int result = A;
		boolean point = false;

		if (B >= C) {
			System.out.println(-1);
		} else {
			while (point != true) {
				if (result > 0) {
					result -= (C - B);
					cnt++;
				} else {
					cnt++;
					point = true;
				}
			}
			System.out.println(cnt);
		}
		sc.close();
	}

}
