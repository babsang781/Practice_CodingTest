public class Solution {
    public int solution(int n) {
        int answer = 0;
        
        //반복문 나머지가 0인 값을 모두 더함
        int i =1;
        while( i <= n ){
            if(n % i ==0) answer+=i;
           i++;
        }
        return answer;
    }
}
