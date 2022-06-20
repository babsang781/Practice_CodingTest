public class Solution {
    public string solution(string s) {
        // 이상한 문자열이 맞네, 여튼, 1.공백으로 구분된 단어로 나누고, 2.각 단어를 다시 나눠서 3.홀수만 대문자로 4,5 그리고 다시 합침. 흠..
        string answer = "";
        string[] str_arr = s.Split(" ");
        
        foreach(var val in str_arr){
            string[] val_arr = val.Split("");
            
            for(int i = 0 ; i < val_arr.Length ; i++){
                
                if(i % 2 == 0 ){
                    answer += val[i];    
                }else{
                    answer += val[i].ToUpper();
                }
                 
                
            }
            answer += " ";
        }
        
        return answer;
    }
}
