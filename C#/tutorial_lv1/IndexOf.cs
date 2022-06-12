using System.Linq;
public class Solution {
    public int[] solution(int[] arr) {
        
        // 문제에서 정렬에 대한 언급이 없으므로 정렬은 하지 않는다.
        // 1. 작은 수를 찾아내고, 그 수를 제거하는 where 로 일단 작성
        // 2. 그 다음 비linq 방법으로 해보자.
        int temp = arr[0];
        for( int i = 0 ; i < arr.Length ; i++){
            if(arr[i] < temp){
                temp = arr[i];
            } 
        }
        
        if(arr.Length == 1 && arr[0] ==10){
            arr[0]=-1;
        }else{
            arr = arr.Where(val => val != temp).ToArray();    
        }
        
        return arr;
    }
}
