// 타임오버 오답으로 이클립스에서 마저풀고 올림 ㅜㅜ 그래서 main으로 돌렸음 
package Check1_220428;

import java.util.Arrays; // sort 쓸거임

public class First_q2 {


    public static int[] solution(int[] array, int[][] commands) {
        int[] answer = new int[commands.length];
        // for 문에서 commands 를 반복하고,
        // 하나의 commands 안에서 각각의 알고리즘을 반복하면 될 듯

        for(int i = 0; i< commands.length;i++){
            // 새로운 거 배웠네 Arrays.copyOfRange(array, n,m) 배열의 n부터 m까지만 추출한 배열 생성
            int[] temp = Arrays.copyOfRange(array, commands[i][0]-1, commands[i][1]);
            Arrays.sort(temp);
            answer[i] = temp[(commands[i][2])-1];
        }        
        
        return answer;
    }

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] array = {1,3,4,5};
		int[][] commands = {{1,2,1}, {2,4,3}};
		int[] result = solution(array, commands);
		
		for(int j =0 ; j<result.length;j++) {
        	System.out.println(result[j]);
        }

	}

}
