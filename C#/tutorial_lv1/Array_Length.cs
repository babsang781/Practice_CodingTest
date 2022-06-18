using System;

public class Solution {
    public int[] solution(long n) {
        
        int count = (n+"").Length;
        // int count = (int)( Math.Log10(n)+1 );  와 로그 계산 보다 문자열 length 가 더 빠르네, 로그계산으로 하면 한 두개 케이스 연산 시간이 튐. 
        int[] answer = new int[count];
        for ( int i = 0; i< count; i ++ ){
            answer[i] = (int)(n % 10);
            n /= 10;
        }
        
        
        return answer;
    }
}

/*기타 자바 다른 방법

class Solution {
  public int[] solution(long n) {
      String a = "" + n;
        int[] answer = new int[a.length()];
        int cnt=0;

        while(n>0) {
            answer[cnt]=(int)(n%10);
            n/=10;
            System.out.println(n);
            cnt++;
        }
      return answer;
  }
}

class Solution {
  public int[] solution(long n) {
      String s = String.valueOf(n);
      StringBuilder sb = new StringBuilder(s);
      sb = sb.reverse();
      String[] ss = sb.toString().split("");

      int[] answer = new int[ss.length];
      for (int i=0; i<ss.length; i++) {
          answer[i] = Integer.parseInt(ss[i]);
      }
      return answer;
  }
}

class Solution {
  public int[] solution(long n) {
      int length = Long.toString(n).length();
        int[] answer = new int[length];

        for (int i = 0; i < length; i++) {
            answer[i] = (int) (n % 10);
            n /= 10;
        }

        return answer;
  }
}
*/
