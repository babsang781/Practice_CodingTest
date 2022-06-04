public class Solution {
    public double solution(int[] arr) {
        double answer = 0;
        foreach(int i in arr){  // for(int i = 0; i < arr.length; i++){  answer += arr[i]; 
            answer += i;
        }
        answer= answer / arr.Length;
        return answer;
    }
}

--- 

using System.Linq;
public class Solution {
    public double solution(int[] arr) {
        return arr.Average();
    }
}
