import java.util.Arrays;

class Solution {
    public int solution(int[] d, int budget) {
        int answer = 0;
        // 확장성이 떨어지는 것 같지만 일단의 답 알고리즘은,
        // array를 정렬 -> 작은 수부터 budget 에서 순서대로 빼기 반복
        // 반복 시마다 answer++, - 가 되면 실행하지 않음 -> 출력

        Arrays.sort(d); // 배열 정렬
        for (int i=0 ; i<d.length; i++){
            if(budget-d[i]>=0){
                budget = budget-d[i];
                answer++;
            }else{
                break;
            }
        }

        return answer;
    }
}
