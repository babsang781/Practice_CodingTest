--보호소에서 중성화한 동물-조인
select i1.ANIMAL_ID, i1.ANIMAL_TYPE, o1.NAME 
from ANIMAL_INS i1, ANIMAL_OUTS o1
where i1.ANIMAL_ID = o1.ANIMAL_ID
and i1.SEX_UPON_INTAKE like 'Intact%'
and (o1.SEX_UPON_OUTCOME like 'Spayed%' or o1.SEX_UPON_OUTCOME like 'Neutered%');

--보호소에서 중성화한 동물-서브쿼리
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME 
from (select * from ANIMAL_OUTS where SEX_UPON_OUTCOME like 'Spayed%' or SEX_UPON_OUTCOME like 'Neutered%')
where ANIMAL_ID in (select ANIMAL_ID from ANIMAL_INS where SEX_UPON_INTAKE like ('Intact%'));
-- 서브쿼리는 순서랑 성능이랑 잘 모르면 자제할 것, 서브쿼리가 효과적일 때도 있지만 조인이 확장성이 좋음


--find Lucy and Ella
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE from ANIMAL_INS 
where NAME in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty') 
order by ANIMAL_ID;
