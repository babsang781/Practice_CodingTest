-- 입양시각 구하기
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

-- HOUR를 date_format()으로 분류, group by로 묶기
-- 집계함수 COUNT 하고, order by로 정렬


-- <Mysql>
-- 1차시.. 더럽구만
SELECT DATE_FORMAT(O.DATETIME,'%k') AS HOUR -- %k 를 사용하면 한 자리 24 시간으로 나타남
    , COUNT(O.DATETIME) AS COUNT
FROM ANIMAL_OUTS O
where DATE_FORMAT(O.DATETIME,'%k') >=9
and DATE_FORMAT(O.DATETIME,'%k') <20
GROUP BY DATE_FORMAT(O.DATETIME,'%k')
ORDER BY DATE_FORMAT(O.DATETIME,'%H') -- 9가 10, 11 보다 먼저 정렬되게 하기 위해서, '%H'- 두자리 24시간으로 정렬함

-- 참고 수정 - 오오...

SELECT HOUR(O.DATETIME) AS 'HOUR'
  , COUNT(O.ANIMAL_ID) AS 'COUNT'  // HOUR() 함수로 DATE_FORMAT이 간단해짐.
  FROM ANIMAL_OUTS O
  WHERE HOUR(O.DATETIME) BETWEEN 9 AND 20  // 범위 조건 두 개를 BETWEEN으로 하나로 만듦
  GROUP BY HOUR  // ALIAS 를 이용하여 쿼리를 간단하게 함.
  ORDER BY HOUR


-- 기타 다른 방법  LEFT(RIGHT , 서브쿼리
SELECT A.HOUR, COUNT(A.HOUR) 
FROM (
    SELECT LEFT(RIGHT(DATETIME, 8), 2) AS HOUR 
    FROM ANIMAL_OUTS 
    where LEFT(RIGHT(DATETIME, 8), 2) between 9 and 20) A
GROUP BY A.HOUR
ORDER BY 1


-- <Oracle>
SELECT to_char(O.DATETIME,'HH24') AS HOUR
    , COUNT(O.DATETIME) AS COUNT
FROM ANIMAL_OUTS O
where to_char(O.DATETIME,'HH24') between 9 and 20
GROUP BY to_char(O.DATETIME,'HH24')
ORDER BY to_char(O.DATETIME,'HH24')
