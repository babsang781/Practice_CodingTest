using System;
using System.Text.RegularExpressions;

public class Solution {
    public bool solution(string s) {
        bool answer = true;
        if(Regex.IsMatch(s, @"^[0-9]+$")){
        }else{
            answer= false;
        }
        
        
        return answer;
    
    }
}
