using System;

public class Solution {
    public int solution(int n) {
        
        // 10 으로 반복해서 나눠서 더하기
        
        int answer = 0;
        // int cnt = n.ToString().Length;
        // for ( int i = 0; i < cnt; i++){   // 0.38ms 
        
        while(true)
        {
            answer += n % 10;
            n /= 10;
            
            if(n == 0) break;   // 0.16ms -- 형변환이 없고, 단순 조건이라 그런가 이게 더 빠르네
        }
        
        return answer;
    }
}
