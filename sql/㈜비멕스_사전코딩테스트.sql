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


-- 쿼리 성능 향상 참고 사이트 2 곳 : https://mangkyu.tistory.com/52?category=761304  , https://doorbw.tistory.com/222

-- exists 와 subquery 같이 쓰면 비효율적임. in 과 달리 exists 는 subquery 앞 query에서 full scan을 먼저 진행함. in 을 쓰면 subquery 먼저 진행함!

select a.ANIMAL_ID, a.ANIMAL_TYPE, a.INTAKE_CONDITION
from ANIMAL_INS a
where a.ANIMAL_ID not in
  (select a.ANIMAL_ID from ANIMAL_INS a
  where a.ANIMAL_TYPE ='cat' and a.INTAKE_CONDITION = 'sick')
