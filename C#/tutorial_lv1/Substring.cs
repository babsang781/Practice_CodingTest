public class Solution {
    public string solution(string s) {
        // 가독성과 성능이 더 나은 코드를 고민하자.
        // 변수 a 를 만들지 않고 매번 직접 s.Length 를 사용하면 코드는 1 줄 줄었지만 메모리와 시간적으로 성능이 안 좋아졌음. 
        // 대체로 이 짧은 코드에서의 성능은 : 변수/2 연산까지 한 것 > 길이 변수만 > 변수 없이 매번 연산 
        int a = s.Length / 2;
        string answer="";
        
        if(s.Length % 2 == 0){
            answer = s.Substring( a - 1, 2); // 2개 문자
        }else{
            answer = s.Substring( a, 1); // 1개 문자
        }
        
        return answer;
        
    }
}


/*Java

class Solution {
    public String solution(String s) {
        // 문자열 길이를 재고
        // 길이 나누기 2의 나머지가 0이면 문자열의 (x/2)-1 번째 문자부터 2개 
        // 길이 나누기 2의 나머지가 1이면 문자열의 (x-1)/2 번째 문자부터 1개를 반환
        // substring( 시작, 끝)
        
        int a = s.length();
        String answer="";
        
        if(a % 2 == 0){
            answer = s.substring((a / 2) - 1, (a / 2) + 1); // 2개 문자
        }else{
            answer = s.substring((a - 1) / 2, ((a - 1) / 2) + 1); // 1개 문자
        }
        
        return answer;
    }
}
*/
