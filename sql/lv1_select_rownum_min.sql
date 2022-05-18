-- 최소 값 하나를 가져오는 쿼리
SELECT NAME 
FROM ANIMAL_INS 
WHERE DATETIME = (SELECT MIN(DATETIME) FROM ANIMAL_INS)

-- 최소 값 하나를 가져오는 쿼리
select name, DATETIME
from (select name, DATETIME FROM ANIMAL_INS order by DATETIME desc)
where rownum <=5
