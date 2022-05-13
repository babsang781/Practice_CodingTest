-- 나의 1차 답안
SELECT ANIMAL_TYPE, count(ANIMAL_TYPE) as count
from ANIMAL_INS 
group by ANIMAL_TYPE
order by ANIMAL_TYPE


-- 다른 사람 답안(1), 고양이와 개를 각각 필요한 순서로 검색하고 Union all 진행
-- Union 사용시 ANIMAL_TYPE 관련해서 중복 제거 과정이 들어가서 자동 정렬이 됨(dog, cat 순서로 해도 cat,dog 순서 출력됨) -> 성능 저하
-- 필요한 순서로 검색하고 Union all 진행
-- SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) as count
-- FROM ANIMAL_INS
-- WHERE ANIMAL_TYPE = 'Cat'
-- group by ANIMAL_TYPE
-- UNION ALL--union 사용시 자동 정렬 되지만, 성능 저하
-- SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) as count
-- FROM ANIMAL_INS
-- WHERE ANIMAL_TYPE = 'Dog'
-- group by ANIMAL_TYPE


-- 다른 사람 답안(2), where 문에 고양이와 개를 각각 지정
-- SELECT ANIMAL_TYPE, count(ANIMAL_TYPE) as count
-- FROM ANIMAL_INS 
-- WHERE ANIMAL_TYPE IN ('Cat', 'Dog')
-- group by ANIMAL_TYPE
-- order by ANIMAL_TYPE
