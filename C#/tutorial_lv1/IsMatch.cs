using System;
using System.Text.RegularExpressions;

public class Solution {
    public bool solution(string s) {
        bool answer = false;
        if(s.Length == 4 || s.Length == 6){
            answer = Regex.IsMatch(s, @"^\d+$");
        }
        
        
        return answer;
    
    }
}

/*
public class Solution {
    public bool solution(string s) {
            bool answer = false;
            if (s.Length == 4 || s.Length == 6)            
                answer = int.TryParse(s, out int i);
                
            return answer;
    }
}






*/
