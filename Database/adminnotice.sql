--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINNOTICE
--------------------------------------------------------

  CREATE TABLE "ADMINNOTICE" 
   (	"ADMIN_NO" NUMBER, 
	"USERID" VARCHAR2(20 BYTE), 
	"ADMIN_TITLE" VARCHAR2(500 BYTE), 
	"ADMIN_CONTENT" VARCHAR2(2000 BYTE), 
	"ADMIN_WRITEDATE" DATE DEFAULT sysdate, 
	"ADMIN_HIT" NUMBER, 
	"IMG" VARCHAR2(100 BYTE), 
	"SECTION" VARCHAR2(100 BYTE)
   ) ;
REM INSERTING into ADMINNOTICE
SET DEFINE OFF;
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (31,'apple','나를 위한 건강한 취향, 지구환경을 위한 착한소비','나를 위한 건강한 취향, 지구환경을 위한 착한소비',to_date('21/10/25','RR/MM/DD'),10,'notice02.png','m3');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (33,'apple','2021 아프리카,leaf로 피다.','아프리카 봉사활동 ',to_date('21/10/26','RR/MM/DD'),40,'bongsa.jpg','m3');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (27,'apple','제주 동절기 신규 특화 음료 출시 홍보문','제주 동절기 신규 특화 음료 출시 ',to_date('21/10/23','RR/MM/DD'),17,'notice05.png','m1');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (36,'goguma','가을 텀블러 직원할인','가을 텀블러 직원할인',to_date('21/10/27','RR/MM/DD'),53,'notice01.png','m1');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (34,'apple','마포점 신규인력지원 모집','마포점 신규인력지원 모집',to_date('21/10/26','RR/MM/DD'),15,'inshop.jpg','m2');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (35,'apple','홀리데이 커피머신 출시','홀리데이 커피머신 출시',to_date('21/10/26','RR/MM/DD'),16,'machine.png','m1');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (16,'apple','오트 밀크 퍼스널 옵션 선택','ggg',to_date('21/10/22','RR/MM/DD'),22,'notice01.png','m2');
Insert into ADMINNOTICE (ADMIN_NO,USERID,ADMIN_TITLE,ADMIN_CONTENT,ADMIN_WRITEDATE,ADMIN_HIT,IMG,SECTION) values (26,'apple',' 리저브 오텀 신규 커피 & 원두 출시','원두 출시',to_date('21/10/23','RR/MM/DD'),37,'notice03.png','m1');
--------------------------------------------------------
--  DDL for Index PK_ADMINNOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ADMINNOTICE" ON "ADMINNOTICE" ("ADMIN_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table ADMINNOTICE
--------------------------------------------------------

  ALTER TABLE "ADMINNOTICE" MODIFY ("ADMIN_NO" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("ADMIN_TITLE" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("ADMIN_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("ADMIN_WRITEDATE" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" MODIFY ("SECTION" NOT NULL ENABLE);
  ALTER TABLE "ADMINNOTICE" ADD CONSTRAINT "PK_ADMINNOTICE" PRIMARY KEY ("ADMIN_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMINNOTICE
--------------------------------------------------------

  ALTER TABLE "ADMINNOTICE" ADD CONSTRAINT "FK_REGISTERS_TO_ADMINNOTICE" FOREIGN KEY ("USERID")
	  REFERENCES "REGISTERS" ("USERID") ENABLE;
