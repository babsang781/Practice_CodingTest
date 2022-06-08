public class Solution {
    public int[] solution(int n, int m) {
       
        int maxDiv = 0;
        
        for(int i = 1 ; i <= n ; i++){
            if(n % i == 0 && m % i == 0){
                maxDiv = i;
            }
        }
        int[] answer = {maxDiv, n * m / maxDiv};
        
    return answer;
    }
}
/*

*/

/*
JavaScript
function solution(n, m) {
    // 최대 공약수는 1부터 n 또는 m 까지 반복해서 n,m 둘 다 나누어서 0 이 나오면 최대 공약수-> x 이고,
    // 최소공배수는 (n*m)/x
    let answer = [];
    let maxdiv = 0;
    
    for(let i = 1; i <= n ; i++){
        if(n % i == 0 && m % i == 0){
            maxdiv = i;
        }
    }
    
    return answer = [maxdiv, n*m/maxdiv];
}
*/
