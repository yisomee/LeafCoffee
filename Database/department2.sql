--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENT2
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT2" 
   (	"DEPT_NUM" NUMBER, 
	"DEPT_NAME" VARCHAR2(20 BYTE)
   ) ;
REM INSERTING into DEPARTMENT2
SET DEFINE OFF;
Insert into DEPARTMENT2 (DEPT_NUM,DEPT_NAME) values (7000,'인사부');
Insert into DEPARTMENT2 (DEPT_NUM,DEPT_NAME) values (7100,'품질관리부');
Insert into DEPARTMENT2 (DEPT_NUM,DEPT_NAME) values (7200,'가맹관리부');
Insert into DEPARTMENT2 (DEPT_NUM,DEPT_NAME) values (7300,'시설부');
Insert into DEPARTMENT2 (DEPT_NUM,DEPT_NAME) values (8000,'경영부');
--------------------------------------------------------
--  DDL for Index PK_DEPARTMENT2
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DEPARTMENT2" ON "DEPARTMENT2" ("DEPT_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT2
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT2" MODIFY ("DEPT_NUM" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT2" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT2" ADD CONSTRAINT "PK_DEPARTMENT2" PRIMARY KEY ("DEPT_NUM")
  USING INDEX  ENABLE;
