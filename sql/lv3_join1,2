-- 천재지변으로 인해 일부 데이터가 유실되었습니다. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.
#1. 입양 간 기록이 있는데 -> OUTS 테이블에 ID 있는 행 중에,
#2. 보호소에 들어온 기록이 없는 -> INS 테이블에 ID가 없는 행을 조인
# -- 3. 동물의 아이디와 이름SELECT , ID 순 조회 ORDER BY 

-- MYSQL

# SELECT O1.ANIMAL_ID	
    , O1.NAME
    FROM ANIMAL_OUTS O1
    WHERE O1.ANIMAL_ID NOT IN 
        (SELECT O.ANIMAL_ID	
        FROM ANIMAL_OUTS AS O JOIN ANIMAL_INS I
        ON O.ANIMAL_ID = I.ANIMAL_ID)
    ORDER BY O1.ANIMAL_ID
    
# 성능 더 좋다는 LEFT JOIN ! 
SELECT ao.ANIMAL_ID,
    ao.NAME
from ANIMAL_OUTS ao
    left join ANIMAL_INS ai
        on ai.ANIMAL_ID = ao.ANIMAL_ID
where ai.ANIMAL_ID is null
AND AO.ANIMAL_ID IS NOT NULL
order by ao.ANIMAL_ID;

# RIGHT JOIN  
SELECT AO.ANIMAL_ID
    , AO.NAME 
FROM ANIMAL_INS AI
    RIGHT OUTER JOIN ANIMAL_OUTS AO 
        ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.ANIMAL_ID IS NULL
order by AO.ANIMAL_ID;


-- 관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다. 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일이 빠른 순으로 조회해야합니다.

-- MYSQL
-- explain analyze  :  실행 계획 및 실행 결과 확인 , 프로그래머스에서도 가능함! 
select i.animal_id
  , i.name
from animal_ins i 
  inner join animal_outs o
  on i.animal_id=o.animal_id
where i.datetime>o.datetime
order by i.datetime;
