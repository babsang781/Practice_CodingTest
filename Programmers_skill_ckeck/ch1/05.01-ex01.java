import java.lang.Integer;

class Solution {
    public int solution(String s) {
        int answer = 0;
        
        try{
            answer = Integer.parseInt(s,10);
            // answer = Integer.valueOf(s).intValue();
        }catch(NumberFormatException e){
            e.printStackTrace();
        }
        
        return answer;
    }
}

//채점 결과
//정확성: 50.0
//효율성: 0.0 ??
//합계: 50.0 / 50


class Solution {
    public int solution(int n) {
        int answer = 0;
        for(int i = 1; i<n;i++){
            if(n % i ==1){
                answer = i;
                break;
            }
                
        }
        return answer;
    }
}

//채점 결과
//정확성: 50.0
//효율성: 0.0 ??
//합계: 50.0 / 50
