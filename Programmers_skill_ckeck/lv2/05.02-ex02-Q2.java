// 1. 수학적 계산 공식을 만들어서 진행시키는 방법 - 효율은 이게 좋겠지만 일단은...
// 2. 진행 순서대로 알고리즘 짜는 방법 - 진행
// 실패 - 미완성 - 다른 사람 답안 참고하기

class Solution {
    public int solution(int bridge_length, int weight, int[] truck_weights) {
        int answer = 0;     // 경과 시간
        int nowWeights=0;   // 현재 다리 위 트럭 무게
        int nowTrucks =0;   // 현재 다리 위 트럭 수
        int temp=0;         // 새로 트럭 들어와도 되는 무게 확인용 임시 변수
        
        for(int i = 0 ; i < truck_weights.length; i++){     // 트럭 순서대로 하나씩 반복
            if(bridge_length<=nowTrucks){
                answer++;
            }
            if(weight >= nowWeights + truck_weights[i]){    // 트럭 무게가 다리 무게를 넘지 않으면
                nowWeights += truck_weights[i];     // 현재 다리, 트럭수, 시간 변수 수정
                nowTrucks ++;
                answer ++;
            }else{
                for(int j = nowTrucks; j >0 ;j--){    // 새로 트럭 들어와도 되는지 확인 과정
                    temp += truck_weights[i-j];         // 관련된 무게 측정용
                    if(weight >= nowWeights - temp + truck_weights[i]){
                        nowWeights -= temp+ truck_weights[i];
                        answer+=bridge_length-nowTrucks+2;
                        nowTrucks -=(nowTrucks-j);
                        break;
                    }
                }
            }

            if(truck_weights.length-1==i){
                answer+=bridge_length;
            }
        }
        
        return answer;
    }
}
