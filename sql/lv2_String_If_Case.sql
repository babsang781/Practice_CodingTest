

-- 코드를 입력하세요
-- 보호소의 동물이 중성화되었는지 아닌지 파악하려 합니다. 중성화된 동물은 SEX_UPON_INTAKE 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다. 동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 중성화가 되어있다면 'O', 아니라면 'X'라고 표시해주세요.

-- 조건 문 사용

-- (if) decode의 경우 결괏값이 고정적일 때 사용하는 것이 좋고 case의 경우 부등식으로 비교할 때 사용하는 것이 좋을 것입니다 -https://gksrltjd.tistory.com/29



-- mysql

-- if 구문 사용 00 
SELECT i.ANIMAL_ID
    , i.NAME
    , if(i.SEX_UPON_INTAKE like 'Neutered%' or i.SEX_UPON_INTAKE like 'Spayed%', 'O', 'X' ) as '중성화'
from ANIMAL_INS i
order by i.ANIMAL_ID

-- like or -> in like 사용은 지원하지 않음 
    -- -> regexp 정규식 사용! 
select i.animal_id
    , i.name
    , if
    (i.SEX_UPON_INTAKE regexp 'Neutered|Spayed'
        , 'O'
        , 'X' ) 
from ANIMAL_INS i
order by i.animal_id


-- case 구문 사용 - 
SELECT i.ANIMAL_ID
    , i.NAME
    , CASE  
        WHEN (i.SEX_UPON_INTAKE like 'Neutered%') THEN 'O'
        WHEN (i.SEX_UPON_INTAKE like 'Spayed%') THEN 'O'
        ELSE 'X' 
        END as '중성화'
from ANIMAL_INS i
order by i.ANIMAL_ID



-- Oracle sql

-- decode 구문 사용 
SELECT i.ANIMAL_ID
    , i.NAME
    , decode
        (i.SEX_UPON_INTAKE
         , 'Intact Male' 
         , 'X'
         , 'Intact Female'
         , 'X'
         , 'O' ) as "중성화"
from ANIMAL_INS i
order by i.ANIMAL_ID
