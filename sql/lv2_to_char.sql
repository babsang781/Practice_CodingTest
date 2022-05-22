-- DATETIME에서 DATE로 형 변환
-- ANIMAL_INS 테이블에 등록된 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜를 조회하는 SQL문을 작성해주세요. 이때 결과는 아이디 순으로 조회해야 합니다.

-- <Oracle> -- 참고 TO_CHAR , TO_NUMBER, TO_DATE  : mysql, mssql 안 됨
SELECT i.ANIMAL_ID, i.NAME, to_CHAR(i.DATETIME, 'YYYY-MM-DD') as 날짜
from ANIMAL_INS i
order by i.ANIMAL_ID 


-- <Mysql> : DATE_FORMAT( 000, '%Y-%m-%d') -> 2022.05.22 // DATE_FORMAT( 000, '%y-%m-%d') -> 22.05.22 
-- 참고 다른 함수  STR_TO_DATE('20201103', '%Y%m%d%H%i%s') // 관련 링크 https://lovethefeel.tistory.com/47

SELECT I.ANIMAL_ID, I.NAME, DATE_FORMAT(I.DATETIME, '%Y-%m-%d') AS 날짜
FROM ANIMAL_INS I
ORDER BY I.ANIMAL_ID

-- LEFT 사용
SELECT I.ANIMAL_ID, I.NAME, LEFT(I.DATETIME, 10) AS 날짜
FROM ANIMAL_INS I
ORDER BY I.ANIMAL_ID


-- 참고 <MSsql>

SELECT I.ANIMAL_ID, I.NAME, CONVERT(CHAR(10), I.DATETIME, 23 ) AS 날짜
FROM ANIMAL_INS I
ORDER BY I.ANIMAL_ID

-- https://gent.tistory.com/35
-- https://chachahoya.tistory.com/74

CONVERT(CHAR(23), DATETIME, 21)  -- 2000-01-02 13:14:15.678  YYYY-MM-DD HH:MM:SS.MS  
CONVERT(CHAR(10), DATETIME, 23)  -- 2000-01-02  YYYY-MM-DD 
CONVERT(CHAR(8), DATETIME, 112)  -- 20000102  YYYYMMDD

select convert(varchar, getdate(), 111)  --yyyy/mm/dd
select convert(varchar, getdate(), 114)  --hh:mi:ss:mmm (24h)
select convert(varchar, getdate(), 120)  --yyyy-mm-dd hh:mi:ss (24h)
