-- 이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성해주세요.

<Oracle >

-- 조건문: host_id 가 둘 이상인 모든 행
-- 1. group by, count(host_id), having 사용하기

select A.* 
from places A
    join (select host_id
        from places
        group by host_id
        having count(host_id)>=2
        ) B
    on A.host_id = B.host_id
order by A.id;

-- 1. 조인, 2. 서브 쿼리 , ...
-- 3. 
