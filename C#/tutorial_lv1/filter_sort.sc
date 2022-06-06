// array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
// divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.

using System;
using System.Linq;

public class Solution {
    public int[] solution(int[] arr, int divisor) {
        // filter 있는지 보기 -> FindAll ** using System
        int[] answer = Array.FindAll(arr, v => v%divisor ==0);
       
        if(answer.Length <1){
            answer = answer.Append(-1).ToArray();
            // Append().ToArray() 로 배열에 추가하기 ** using System

        }else{
            Array.Sort(answer);
        }
        
        return answer;
    }
}


/* JavaScript 
function solution(arr, divisor) {
    let answer = [];
    for(let i=0; i<arr.length; i++){
        if(arr[i] % divisor == 0){
            answer.push(arr[i]);
        }
    }
    // let answer = arr.filter(v => v%divisor == 0);

    
    return answer.length < 1 ? [-1]: answer.sort((a,b) => a-b);
}
*/
