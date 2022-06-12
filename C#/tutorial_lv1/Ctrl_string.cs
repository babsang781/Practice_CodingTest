using System;
public class Solution {
    public string solution(string phone_number) {
        // 1. 문자열 길이 재기, 길이-4 만큼 별로 바꾸기 Length , Substring(a,b) 
        
        int len = phone_number.Length;
        string last4 = phone_number.Substring(len-4,4);
        
        string stars = new String('*',len-4);
        // string stars = String.Concat(Enumerable.Repeat("*",len-4));
        
        return stars+last4;
    }
}

//        return phone_number.Substring(phone_number.Length - 4, 4).PadLeft(phone_number.Length, '*');
// 이게 두 배 정도 더 빠름 


/*

//특정 문자열을 변경하는 Replace("a","b") a->b

//공백 제거
string source = "<    I'm wider than I need to be.      >";

var trimmedResult = source.Trim();  // <I'm wider than I need to be.>
var trimLeading = source.TrimStart();  // <I'm wider than I need to be.      >
var trimTrailing = source.TrimEnd();  // <    I'm wider than I need to be.>
'

string s = "You win some. You lose some.";

string[] subs = s.Split();

foreach (string sub in subs)
{
    Console.WriteLine($"Substring: {sub}");
}

// This example produces the following output:
//
// Substring: You
// Substring: win
// Substring: some.
// Substring: You
// Substring: lose
// Substring: some.


*/
