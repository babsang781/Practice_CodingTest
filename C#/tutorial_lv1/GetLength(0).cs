using System;
public class Solution {
    public int[,] solution(int[,] arr1, int[,] arr2) {
        int[,] answer = new int[arr1.GetLength(0),arr1.GetLength(1)];

        for( int i = 0 ; i < arr1.GetLength(0); i++){
            for( int j = 0; j < arr1.GetLength(1); j++){
                answer[i,j] = arr1[i,j] + arr2[i,j];
            }
        }
        
        return answer;
    }
}


/* 
// ref
using System;
namespace width_and_height_of_2d_array
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] array2D = new int[5, 10];
            Console.WriteLine(array2D.GetUpperBound(0)+1);  // 5
            Console.WriteLine(array2D.GetUpperBound(1)+1);  // 10
        }

        int[,] arr2 = new int[,] { { 1, 2, 3 }, { 4, 5, 6 } };
            for (int i = 0; i < arr2.GetLength(0); i++)
            {
                for (int j = 0; j < arr2.GetLength(1); j++)
                {
                    Console.Write("[{0}, {1}] : {2} ", i, j, arr2[i, j]);
                }
                Console.WriteLine();
            }
            Console.WriteLine();
}

*/
