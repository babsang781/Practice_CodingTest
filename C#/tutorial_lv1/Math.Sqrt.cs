using System;
public class Solution {
    public long solution(long n) {
        double answer = 0;
         answer = Math.Sqrt(n) == (long)Math.Sqrt(n)? Math.Pow(Math.Sqrt(n) + 1, 2) : -1;

        return (long)answer;
    }
}
// if(Math.sqrt(n) % 1 == 0) 이런 조건문도 문제는 없지만 대체로 성능이 더 안 좋음


/*

테스트 1 〉	통과 (0.18ms, 31.2MB)
테스트 2 〉	통과 (0.26ms, 31.5MB)
테스트 10 〉	통과 (0.25ms, 31.2MB)
테스트 11 〉	통과 (0.25ms, 31.5MB)
테스트 12 〉	통과 (0.26ms, 31.4MB)
테스트 13 〉	통과 (0.18ms, 31.3MB)


-방법 2, 변수 추가 
long square = (long)Math.Sqrt(n);
answer = Math.Sqrt(n) == square? Math.Pow(square + 1, 2) : -1;
        
-방법 2 : 간단한 것은 더 근소하게 더 빠르거나 느리지만, 일부 케이스에서 1분이 넘는 결과가 나타나는 것을 보아서 연산 알고리즘이 안정적이지 못한 것으로 보임.
테스트 1 〉	통과 (0.17ms, 31.2MB)
테스트 2 〉	통과 (1.53ms, 31.4MB)
테스트 10 〉	통과 (1.24ms, 31.4MB)
테스트 11 〉	통과 (1.49ms, 31.3MB)
테스트 12 〉	통과 (0.25ms, 31.2MB)
테스트 13 〉	통과 (0.20ms, 31MB)


*/
