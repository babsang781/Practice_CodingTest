//양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.

public class Solution {
    public bool solution(int x) {
        // 10진법의 수는 10의 단위로 나누면 자릿수를 나눌 수 있다. x/10 의 값이 0을 마지막이 되도록 반복해서 나누고 나머지를 모두 더하는 수룰 구하고, 그 수로 x 를 나누었을 때 나머지가 0 이면 하샤드 수이다.
        int sum = 0;
        int temp = x;
        for( int i = 0; i < 5;i++){
            if(temp/10 >=1){
                sum += temp % 10;
                temp = (int)(temp / 10);
            }else{
                sum += temp % 10;
                break;
            }
        }
        return x % sum == 0? true: false ;  0.17초 정도
    }
}

/*
      int tmp = x;
            int value = 0;
            bool answer = false;
            while (tmp > 0)
            {
                value += tmp % 10;
                tmp = tmp / 10;
            }

            if (x % value == 0)
                answer = true;

            return answer;  // 0.16초 

--------------------

 bool answer = true;

        var temp = x.ToString().ToList().Select(y => int.Parse(y.ToString())).Sum();

        if (x % temp != 0)
            answer = false;

        return answer;  // 2.35초
*/


