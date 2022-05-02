-- 쿼리 성능 개선하기
SELECT * FROM ANIMAL_INS WHERE ANIMAL_TYPE != 'Cat' OR INTAKE_CONDITION != 'Sick'

--제출
select ANIMAL_ID, ANIMAL_TYPE, INTAKE_CONDITION 
from ANIMAL_INS 
where not exists 
   (select ANIMAL_ID, ANIMAL_TYPE, INTAKE_CONDITION 
   from ANIMAL_INS 
   where ANIMAL_TYPE ='cat' 
   and INTAKE_CONDITION = 'sick') 


-- 자체 관련 학습 수정 - intersect 추가
select ANIMAL_ID, ANIMAL_TYPE, INTAKE_CONDITION from ANIMAL_INS
where not exists 
  (select ANIMAL_ID, ANIMAL_TYPE, INTAKE_CONDITION from ANIMAL_INS 
  where ANIMAL_TYPE ='cat' 
  intersect 
  select ANIMAL_ID, ANIMAL_TYPE, INTAKE_CONDITION from ANIMAL_INS 
  where INTAKE_CONDITION = 'sick')
  
-- 조인도 쓰는 방법이 있을 것 같은데 아직 생각이 안 나네
-- 일단 정리가 되는대로 블로그나 좀 쓰면 좋겠는데, 내가 할 지 모르겠네...
