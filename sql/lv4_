-- 데이터 분석 팀에서는 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지 알아보려 합니다. 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL 문을 작성해주세요. 이때 결과는 장바구니의 아이디 순으로 나와야 합니다.
EXPLAIN
SELECT DISTINCT( M.CART_ID )
FROM ( SELECT A.CART_ID FROM CART_PRODUCTS A WHERE A.NAME= 'Milk' ) M
    JOIN ( SELECT B.CART_ID FROM CART_PRODUCTS B WHERE B.NAME= 'Yogurt') Y
    ON M.CART_ID = Y.CART_ID
ORDER BY M.CART_ID;

/* 추후 비교 확인 할 것!!
 위 코드 결과 
1	SIMPLE	A		ALL					342	10	Using where; Using temporary; Using filesort
1	SIMPLE	B		ALL					342	1	  Using where; Distinct; Using join buffer (hash join)
*/


-- 다른 방법 EXPLAIN 결과 비교해보기 -- 프로그래머스에서는 이 코드들이 analyze 가 안 돌아가서 확인 못했음.
EXPLAIN
SELECT
    CART_ID
FROM(
    SELECT
        CART_ID,
        COUNT(CASE WHEN NAME = 'Milk' THEN CART_ID END) AS Milk_CNT,
        COUNT(CASE WHEN NAME = 'Yogurt' THEN CART_ID END) AS YOGURT_CNT
    FROM CART_PRODUCTS
    GROUP BY CART_ID
) T1
WHERE Milk_CNT >= 1 AND YOGURT_CNT >= 1
ORDER BY CART_ID

/* 두 번째 방법 결과 row 수는 같을 것으로 나타나는데, filter 값이 차이가 난다. 
1	PRIMARY			            ALL					342	11.11	Using where; Using filesort
2	DERIVED	CART_PRODUCTS		ALL					342	100	  Using temporary
*/



-- 이것도 괜찮아 
explain
SELECT DISTINCT CART_ID  
FROM CART_PRODUCTS 
WHERE NAME = 'Yogurt'
    AND CART_ID IN 
    (
        SELECT CART_ID
        FROM CART_PRODUCTS AS c
        WHERE NAME = 'Milk'
    )
ORDER BY CART_ID;

/*
1	SIMPLE	CART_PRODUCTS		ALL					342	10	Using where; Using temporary; Using filesort
1	SIMPLE			eq_ref			4	sql_runner_run.CART_PRODUCTS.CART_ID	1	100	Distinct
2	MATERIALIZED	c		ALL					342	10	Using where
*/
