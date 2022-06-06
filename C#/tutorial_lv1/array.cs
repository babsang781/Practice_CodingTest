public class Solution {
    public long[] solution(int x, int n) {
        long[] answer = new long[n];
        
        answer[0] = x;
        for(int i = 1; i<n;i++){
            answer[i] = answer[i-1] + x;
        }
        
        return answer;
    }
}


/* javascript 
answer.push(x*(i+1)); // c#과 java 에서는 int 범위를 넘어갈 수 있기 때문에 long 을 사용함

//    return Array(n).fill(x).map((v, i) => (i + 1) * v)

*/
