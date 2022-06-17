

/*java

import java.util.*;

class Solution {
    public long solution(long n) {
        // split 에서 "" 하면 쪼개지지 않을까? 그리고 array.sort() 하고 다시 붙이기, 붙이는 건 concat 이었나?
        long answer = 0;
        
        String str_n = String.valueOf(n);
        String[] arr_n = str_n.split("");
        Arrays.sort(arr_n,Collections.reverseOrder());
        
        answer = Long.parseLong(String.join("", arr_n));
        
        
        return answer;
    }
}*/
