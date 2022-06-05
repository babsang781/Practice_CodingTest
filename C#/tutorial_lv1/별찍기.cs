using System;

public class Example
{
    public static void Main()
    {
        String[] s;  // 문제에서 표준 입력으로 두 개의 정수가 주어짐. C#의 입력은 String으로 받기 때문에 String 배열을 생성
        Console.Clear();
        s = Console.ReadLine().Split(' '); // 이렇게 쓰는 듯
        
        int n = int.Parse(s[0]);
        int m = Convert.ToInt16(s[1]);  // 파싱 방법도 여러가지 있음 Convert.ToInt32 도 가능
        
        for(int i = 0; i < m; i++){
            for(int j = 0; j < n ; j ++){
                Console.Write("*");
            }
            Console.WriteLine();
        }
    }
}
