-- 코드를 입력하세요
SELECT ANIMAL_ID from ANIMAL_INS 
where NAME is not null
order by ANIMAL_ID asc

-- 1. 알아보기로는 is null / is not null 은 full scan 을 해서 성능 개선이 가능하면 알아봐야함.
-- 2. 하지만 char 타입은 인덱스 사용불가, 개선하기 어려운 것 같음. -> 이 문제는 이게 맞는 듯
-- -- 참고 페이지 : http://wiki.gurubee.net/pages/viewpage.action?pageId=27427980
-- 3. 그럼에도 기본적으로 null 값이 없도록 default 값을 넣어두는 형태로 만들면 조회 성능 향상 가능
-- 4. 안 되어 있다면, update t set name ='n' where is null 등의 형태로 수정해주고, alter t 로 변경하기
