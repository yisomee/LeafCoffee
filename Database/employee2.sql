--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE2
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE2" 
   (	"EMP_NUM" NUMBER, 
	"DEPT_NUM" NUMBER, 
	"EMP_POSI" VARCHAR2(20 BYTE), 
	"EMP_REGDATE" DATE DEFAULT sysdate, 
	"USERID" VARCHAR2(20 BYTE), 
	"EMP_STATUS" VARCHAR2(1 BYTE)
   ) ;
REM INSERTING into EMPLOYEE2
SET DEFINE OFF;
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2038,7200,'대리',to_date('21/10/13','RR/MM/DD'),'goguma','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2058,7200,'사원',to_date('21/10/27','RR/MM/DD'),'suyoung91','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2059,7200,'부장',to_date('10/01/01','RR/MM/DD'),'master123','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2019,7000,'사원',to_date('21/10/10','RR/MM/DD'),'banana','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2039,7200,'주임',to_date('16/04/22','RR/MM/DD'),'apple1','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2040,7300,'부장',to_date('10/01/03','RR/MM/DD'),'apple2','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2041,7000,'대리',to_date('15/03/09','RR/MM/DD'),'apple3','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2042,7100,'사원',to_date('20/02/22','RR/MM/DD'),'apple4','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2043,7200,'대리',to_date('17/05/12','RR/MM/DD'),'apple5','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2044,7300,'사원',to_date('21/05/05','RR/MM/DD'),'apple6','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2045,7000,'대리',to_date('19/05/22','RR/MM/DD'),'apple7','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2046,7100,'사원',to_date('20/01/09','RR/MM/DD'),'apple8','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2047,7200,'차장',to_date('13/02/18','RR/MM/DD'),'apple9','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2048,7300,'사원',to_date('21/09/21','RR/MM/DD'),'apple10','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2049,8000,'사원',to_date('20/12/22','RR/MM/DD'),'apple11','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2050,7000,'대리',to_date('18/03/03','RR/MM/DD'),'apple12','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2051,7100,'과장',to_date('15/07/04','RR/MM/DD'),'apple13','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2052,7200,'과장',to_date('16/02/08','RR/MM/DD'),'apple14','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2053,7300,'사원',to_date('21/10/01','RR/MM/DD'),'apple15','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2054,7100,'부장',to_date('09/05/07','RR/MM/DD'),'apple16','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2055,8000,'부장',to_date('14/03/14','RR/MM/DD'),'apple17','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2056,7200,'사원',to_date('21/10/26','RR/MM/DD'),'banana123','Y');
Insert into EMPLOYEE2 (EMP_NUM,DEPT_NUM,EMP_POSI,EMP_REGDATE,USERID,EMP_STATUS) values (2057,7100,'사원',to_date('21/10/26','RR/MM/DD'),'donghyun','Y');
--------------------------------------------------------
--  DDL for Index PK_EMPLOYEE2
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMPLOYEE2" ON "EMPLOYEE2" ("EMP_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE2
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE2" MODIFY ("EMP_NUM" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE2" MODIFY ("DEPT_NUM" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE2" MODIFY ("EMP_POSI" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE2" MODIFY ("EMP_REGDATE" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE2" MODIFY ("EMP_STATUS" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE2" ADD CONSTRAINT "PK_EMPLOYEE2" PRIMARY KEY ("EMP_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE2
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE2" ADD CONSTRAINT "FK_DEPARTMENT2_TO_EMPLOYEE2" FOREIGN KEY ("DEPT_NUM")
	  REFERENCES "DEPARTMENT2" ("DEPT_NUM") ENABLE;
  ALTER TABLE "EMPLOYEE2" ADD CONSTRAINT "FK_REGISTERS_TO_EMPLOYEE2" FOREIGN KEY ("USERID")
	  REFERENCES "REGISTERS" ("USERID") ENABLE;
