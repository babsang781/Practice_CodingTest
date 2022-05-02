--보호소에서 중성화한 동물
SELECT ANIMAL_ID, ANIMAL_TYPE, NAME 
from (select * from ANIMAL_OUTS where SEX_UPON_OUTCOME like 'Spayed%' or SEX_UPON_OUTCOME like 'Neutered%')
where ANIMAL_ID in (select ANIMAL_ID from ANIMAL_INS where SEX_UPON_INTAKE like ('Intact%'));

--find Lucy and Ella
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE from ANIMAL_INS 
where NAME in ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty') 
order by ANIMAL_ID;
