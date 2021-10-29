--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"WARE_NUM" NUMBER, 
	"HQ_NUM" NUMBER, 
	"WARE_CNT" NUMBER, 
	"WARE_DATE" DATE DEFAULT sysdate, 
	"EMP_NUM" NUMBER
   ) ;
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (27,18,2000,to_date('21/10/25','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (30,15,5000,to_date('21/10/27','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (32,21,3000,to_date('21/10/27','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (20,11,2000,to_date('21/10/22','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (22,10,5000,to_date('21/10/22','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (23,2,5000,to_date('21/10/22','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (13,1,1000,to_date('21/10/21','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (19,4,5000,to_date('21/10/22','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (21,9,3000,to_date('21/10/22','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (28,7,5000,to_date('21/10/27','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (43,33,5000,to_date('21/10/29','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (17,3,3000,to_date('21/10/21','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (24,13,3000,to_date('21/10/25','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (25,14,3000,to_date('21/10/25','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (26,17,1000,to_date('21/10/25','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (37,26,10000,to_date('21/10/28','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (29,16,5000,to_date('21/10/27','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (33,20,4000,to_date('21/10/27','RR/MM/DD'),null);
Insert into PRODUCT (WARE_NUM,HQ_NUM,WARE_CNT,WARE_DATE,EMP_NUM) values (34,22,1000,to_date('21/10/27','RR/MM/DD'),null);
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRODUCT" ON "PRODUCT" ("WARE_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" MODIFY ("WARE_NUM" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("HQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("WARE_CNT" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("WARE_DATE" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("WARE_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "FK_EMPLOYEE2_TO_PRODUCT" FOREIGN KEY ("EMP_NUM")
	  REFERENCES "EMPLOYEE2" ("EMP_NUM") ENABLE;
  ALTER TABLE "PRODUCT" ADD CONSTRAINT "FK_ITEMS_TO_PRODUCT" FOREIGN KEY ("HQ_NUM")
	  REFERENCES "ITEMS" ("HQ_NUM") ENABLE;
