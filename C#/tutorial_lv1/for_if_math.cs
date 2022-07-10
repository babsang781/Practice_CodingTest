public class Solution {
    public long solution(int a, int b) {
        long answer = 0;
        
        // 두 정수의 합이 21억을 넘을 수 있음.
        // if a 와 b 의 크기 비교 후, 
        // 작은 수 ~ 큰 수로 1씩 증가하면서 모두 더하기
        
        if (a >= b)
        {
            for( int i = b; i <= a; i++)
            {
                answer += i;    
            }
        } else {
            for( int i = a; i <= b; i++)
            {
                answer += i;    
            }
        }
        
        return answer;
    }
}

using System;
public class Solution {
    public long solution(int a, int b) {
       long answer = 0;

          return ((long)(Math.Abs(a - b) + 1) * (a + b)) / 2;
    }
}

