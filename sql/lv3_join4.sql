-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.

--< Oracle > : 오라클 rownum은 where 절에서 작동하기 때문에 서브쿼리 써야함.

SELECT a.animal_id, a.name
from (select I.animal_id, I.name
      from animal_ins i, animal_outs o
      where i.animal_id = o.animal_id 
      order by O.datetime - I.datetime DESC
      ) a
where rownum <=2;

-- 그런데 fetch first 는 뭘까, 공부해야겠네. 오라클 이것도 정답
SELECT A.ANIMAL_ID, A.NAME
    FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
    ORDER BY A.DATETIME - B.DATETIME
    FETCH FIRST 2 ROWS ONLY  -- 학습 필요
    
    
  -- < my sql > 
  
SELECT i.animal_id 
  , i.name 
from animal_ins i
  join animal_outs o
  on i.animal_id = o.animal_id
order by datediff(i.datetime,  o.datetime)
limit 2;
