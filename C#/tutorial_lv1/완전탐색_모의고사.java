import java.util.Arrays;
import java.util.ArrayList;

class Solution {
    public int[] solution(int[] answers) {
        int[] temp = new int[3];
        int noi1 =0,noi2=0,noi3=0,max = 0 ;
        
        for(int i = 1 ; i <= answers.length ; i++){
            noi1 = i%5;
            
            if(i%2==1){
                noi2 = 2;
            }else if(i%8 ==0){
                noi2 = 5;
            }else if(i%8 ==6){
                noi2 = 4;
            }else if(i%8 ==4){
                noi2 = 3;
            }else if(i%8 ==2){
                noi2 = 1;
            }    
            
            if(i%10== 1 || i%10== 2 ){
                noi3 = 3;
            }else if(i%10 ==3 ||i%10==4 ){
                noi3 = 1;
            }else if(i%10 ==5 ||i%10==6 ){
                noi3 = 2;
            }else if(i%10 ==7 ||i%10==8 ){
                noi3 = 4;
            }else if(i%10 ==9 ||i%10==0 ){
                noi3 = 5;
            }    
            
            if(answers[i-1]==noi1) temp[0] +=1;
            if(answers[i-1]==noi2) temp[1] +=1;
            if(answers[i-1]==noi3) temp[2] +=1;
            
        }
        
        for(int i= 0; i<3;i++){
            if(max<temp[i]){
                max= temp[i];
            }
        }
        
        ArrayList<Integer> arl = new ArrayList<>();
        for(int i= 0; i<3;i++){
            if(temp[i]==max) arl.add(i+1);
        }
        
        int[] answer = new int[arl.size()];
        for(int i = 0; i < arl.size(); i++){
            answer[i] = arl.get(i);
        }
        
        return answer;
    }
}
// 전체 1~3번 정답수 배열 생성 >>> 반복문 시작 >>> 1~3번 각 수포자 조건문 생성 해당시 수포자에 +=1 >>> 반복 문 종료시 배열의 최댓값을 찾고, 최댓값과 같은 배열 위치는 index+1 아닌 값은 0으로 temp2에 입력 0이 아닌 값마 answer에 입력 같으면 모두 입력
// 9,10, 12,13 틀리는 중
