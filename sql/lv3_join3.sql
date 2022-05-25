-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일 순으로 조회해야 합니다

-- <Mysql> : left joim 의 활용 과 limit 개념 필요

SELECT i.name
  , i.datetime
from animal_ins i
  left join animal_outs o
  on i.animal_id = o.ANIMAL_ID
where o.animal_id is null
order by i.datetime 
limit 3;  -- 처음부터 n 번째 값까지만 호출: limit 2,4 가능 -> 3,4 호출함

-- < Oracle > : 서브쿼리 활용, rownum, limit의 차이 알게 됨.

SELECT i.name
  , i.datetime
from animal_ins i
  left join animal_outs o
  on i.animal_id = o.ANIMAL_ID
where o.animal_id is null
order by i.datetime;  

-- Oracle 의 rownum 과 mysql의 limit 는 실행 순서가 달라서  oracle 에서는 이 문제에서 join만으로는 정렬된 결과 3개 이하를 가져올 수 없음

-- mysql 의 limit 실행 순서가 order by 뒤인 것과 달리, 
-- Oracle 의 rownum은 where 조건에서 처리하기 때문에 그 뒤에 order by 절이 실행됨.
-- 그래서 Oracle 에서는 정렬된 결과 중 rownum 을 이용한 개수 추출은 서브쿼리(인라인 뷰)에서 정렬을 하고 진행해야 함

SELECT A.* FROM 
  (SELECT A.NAME, A.DATETIME 
  FROM ANIMAL_INS A
    LEFT JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
  WHERE B.ANIMAL_ID IS NULL
  ORDER BY A.DATETIME) 
WHERE ROWNUM <=3;
