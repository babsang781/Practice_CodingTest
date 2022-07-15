import java.util.*;

class Solution {
    public int solution(int[][] sizes) {
        int answer = 0;
        Integer[] hori = new Integer[sizes.length];
        Integer[] verti = new Integer[sizes.length];

        for ( int i = 0; i < sizes.length; i++){
            hori[i] = Math.max(sizes[i][0], sizes[i][1]);
            verti[i] = Math.min(sizes[i][0], sizes[i][1]);
        }

        Arrays.sort(hori, Collections.reverseOrder());
        Arrays.sort(verti,Collections.reverseOrder());

        answer = hori[0]*verti[0];

        return answer;
    }
}
// 2차원 배열의 첫째, 둘째 항의 값을 비교해서 큰 수를 빼서 다른 배열과 정렬 비교 , 작은 수를 빼서 다른 배열과 정렬 비교- 나온 값의 최대 값을 곱함.
// 방식: 배열 길이 만큼의 1차원 배열을 2개 생성 max 를 담은 배열과 min을 담을 배열을 만들어서 각각 max를 추출하고 곱함. 
