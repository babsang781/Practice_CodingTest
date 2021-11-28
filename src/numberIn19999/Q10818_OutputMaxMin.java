package numIn19999;

import java.util.Scanner;

public class Q10818_OutputMaxMin {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		int[] array = new int[N];

		for (int i = 0; i < N; i++) {
			array[i] = sc.nextInt();
		}
		int max= array[0], min = array[0];

		for (int i = 0; i < N; i++) {
			if (array[i] >= max) {
				max = array[i];
			} else if (array[i] <= min) {
				min = array[i];
			}
		}

		System.out.println(min + " " + max);
		sc.close();
	}

}
