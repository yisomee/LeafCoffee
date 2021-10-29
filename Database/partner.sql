--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PARTNER
--------------------------------------------------------

  CREATE TABLE "PARTNER" 
   (	"PART_NUM" NUMBER, 
	"PART_COMPANY" VARCHAR2(20 BYTE), 
	"PART_NAME" VARCHAR2(20 BYTE), 
	"PART_TEL" VARCHAR2(20 BYTE), 
	"PART_EMAIL" VARCHAR2(30 BYTE), 
	"PART_CODE_NAME" VARCHAR2(20 BYTE), 
	"PART_REGDATE" DATE DEFAULT sysdate
   ) ;
REM INSERTING into PARTNER
SET DEFINE OFF;
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (1,'서준물산','박서준','010-1234-5678','suyeong1020@naver.com','운송',to_date('21/10/21','RR/MM/DD'));
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (2,'수영물산','장수영','010-2222-3333','suyeong@naver.com','식자재',to_date('21/10/21','RR/MM/DD'));
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (3,'이솜나라','신이솜','010-3543-2642','aaaa@naver.com','식자재',to_date('21/10/21','RR/MM/DD'));
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (4,'(주)동현','박동현','010-1212-3434','pdh2438@naver.com','식자재',to_date('21/10/21','RR/MM/DD'));
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (5,'영화세상','이영화','010-9999-8888','cccc@naver.com','식자재',to_date('21/10/21','RR/MM/DD'));
Insert into PARTNER (PART_NUM,PART_COMPANY,PART_NAME,PART_TEL,PART_EMAIL,PART_CODE_NAME,PART_REGDATE) values (6,'은정나라','이은정','010-4530-4564','lej23443@naver.com','비품',to_date('21/10/25','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index PK_PARTNER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PARTNER" ON "PARTNER" ("PART_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table PARTNER
--------------------------------------------------------

  ALTER TABLE "PARTNER" MODIFY ("PART_NUM" NOT NULL ENABLE);
  ALTER TABLE "PARTNER" MODIFY ("PART_COMPANY" NOT NULL ENABLE);
  ALTER TABLE "PARTNER" MODIFY ("PART_CODE_NAME" NOT NULL ENABLE);
  ALTER TABLE "PARTNER" MODIFY ("PART_REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PARTNER" ADD CONSTRAINT "PK_PARTNER" PRIMARY KEY ("PART_NUM")
  USING INDEX  ENABLE;
