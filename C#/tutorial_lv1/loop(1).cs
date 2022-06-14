public class Solution {
    public int solution(int num) {
        int answer = 0;
        long loopNum = num;         // * 3이 반복될 경우 21억을 넘어갈 수 있음. int 형의 경우 488회 이후 21을 넘겨서 실패
        
        while(answer < 500){

            if(loopNum == 1) return answer;

            if(loopNum % 2 == 0) // if 문 다음 조건문 안의 코드가 한 줄일 경우, {} 필요 없음.
                loopNum /= 2;
            else
                loopNum = (loopNum*3) +1;

            answer++;

        }
            
        return answer==500? -1: answer;
    }
}

/*
public class Solution {
    public int solution(int num) {
        long lNum = num;
        for (int i = 0; i < 500; i++)
        {
            if (lNum == 1) return i;
            lNum = lNum % 2 == 0 ? lNum / 2 : lNum * 3 + 1;                        
        }
        return -1;        
    }
}
*/
