





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
