--동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요. 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.

-- 코드를 입력하세요
SELECT ai.name, count(ai.name) as COUNT
from ANIMAL_INS ai
group by ai.name
having count(ai.name) >= 2
order by ai.name

-- 그러면 여기서는 from 이 제일 먼저 실행 되고
-- group by로 묶고- 내부 정렬 과정 거치고, having에서 조건맞는지 full scan 하고?(하나?)
-- select 에서 name 과 count(ai.name) 진행한 다음
-- 조회 내용 중 order by 로 정렬 해서 결과를 보여줌 
-- from - group by - having - select - order by

-- from 절에 서브쿼리를 이용해서 작성한 것도 있던데, 그 경우 순서는 
-- 1. from 절 안에 서브 쿼리 -> 1-1 from a_ins, 1-2 group by name 1-3 select name, count(name) 2. 바깥 where 절 count >=2 3. select name, count(name) 4. order by
-- 해서 한 단계 추가 같은데... 
