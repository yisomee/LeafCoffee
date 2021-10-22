-- 시퀀스 생성
    -- items테이블 입고상품번호
create sequence items_sq 
start with 1
increment by 1;
    -- 창업문의 게시글번호
create sequence opensq
start with 1
increment by 1;
    --창업문의 답변번호
create sequence rpsq
start with 1
increment by 1;
    -- 본사직원 사원번호
create sequence empSq
start with 2000
increment by 1;
    --

-- 시퀀스 캐시메모리 제거하기
alter sequence opensq nocache; -- 창업문의 게시글 번호
alter sequence rpsq nocache; -- 창업문의 답변번호
alter sequence s1 nocache; -- 가맹점번호
alter sequence items_sq nocache; -- 상품테이블 입고상품번호
alter sequence empSq nocache; -- 본사 사원번호





