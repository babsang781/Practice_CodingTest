-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

-- 데이터가 없는 시간도 나와야함.

<mysql> 
SELECT A.HOUR
    , case when b.COUNT is null then 0
        else b.COUNT
        end as COUNT
FROM (select row_number() over(partition by '1') -1 as hour from ANIMAL_OUTS limit 24) A
    LEFT JOIN (SELECT HOUR(O.DATETIME) AS 'HOUR'
        , COUNT(O.ANIMAL_ID) AS 'COUNT' 
        FROM ANIMAL_OUTS O
        GROUP BY HOUR 
        ORDER BY HOUR ) B
    ON A.HOUR = B.HOUR

