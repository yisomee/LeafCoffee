--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "PURCHASE" 
   (	"PC_NUM" NUMBER, 
	"PC_CNT" NUMBER, 
	"PC_DATE" DATE DEFAULT sysdate, 
	"FC_NUM" NUMBER, 
	"HQ_NUM" NUMBER, 
	"ORDER_STATUS" NUMBER
   ) ;
REM INSERTING into PURCHASE
SET DEFINE OFF;
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (14,50,to_date('21/10/27','RR/MM/DD'),0,9,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (15,999,to_date('21/10/27','RR/MM/DD'),0,10,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (26,20,to_date('21/10/27','RR/MM/DD'),0,3,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (34,20,to_date('21/10/27','RR/MM/DD'),0,14,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (35,20,to_date('21/10/27','RR/MM/DD'),0,17,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (44,50,to_date('21/10/27','RR/MM/DD'),220,14,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (8,20,to_date('21/10/25','RR/MM/DD'),224,4,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (12,20,to_date('21/10/27','RR/MM/DD'),0,3,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (13,50,to_date('21/10/27','RR/MM/DD'),0,10,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (19,50,to_date('21/10/27','RR/MM/DD'),224,2,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (20,30,to_date('21/10/27','RR/MM/DD'),224,10,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (28,20,to_date('21/10/27','RR/MM/DD'),0,9,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (29,20,to_date('21/10/27','RR/MM/DD'),0,18,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (30,20,to_date('21/10/27','RR/MM/DD'),0,3,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (43,20,to_date('21/10/27','RR/MM/DD'),220,21,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (45,30,to_date('21/10/27','RR/MM/DD'),220,22,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (51,50,to_date('21/10/28','RR/MM/DD'),224,14,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (48,1000,to_date('21/10/28','RR/MM/DD'),224,10,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (52,60,to_date('21/10/28','RR/MM/DD'),224,21,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (58,300,to_date('21/10/28','RR/MM/DD'),224,4,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (64,5000,to_date('21/10/29','RR/MM/DD'),224,15,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (4,50,to_date('21/10/21','RR/MM/DD'),224,1,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (5,333,to_date('21/10/21','RR/MM/DD'),224,1,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (6,11,to_date('21/10/21','RR/MM/DD'),224,1,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (25,20,to_date('21/10/27','RR/MM/DD'),0,17,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (27,20,to_date('21/10/27','RR/MM/DD'),0,4,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (37,20,to_date('21/10/27','RR/MM/DD'),0,17,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (50,50,to_date('21/10/28','RR/MM/DD'),224,4,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (65,500,to_date('21/10/29','RR/MM/DD'),224,4,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (3,33,to_date('21/10/21','RR/MM/DD'),224,1,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (7,2,to_date('21/10/21','RR/MM/DD'),224,3,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (24,20,to_date('21/10/27','RR/MM/DD'),0,4,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (31,20,to_date('21/10/27','RR/MM/DD'),0,9,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (32,20,to_date('21/10/27','RR/MM/DD'),224,13,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (54,80,to_date('21/10/28','RR/MM/DD'),224,13,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (40,20,to_date('21/10/27','RR/MM/DD'),224,14,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (41,20,to_date('21/10/27','RR/MM/DD'),220,9,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (53,100,to_date('21/10/28','RR/MM/DD'),224,3,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (55,50,to_date('21/10/28','RR/MM/DD'),224,23,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (56,200,to_date('21/10/28','RR/MM/DD'),224,9,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (9,20,to_date('21/10/25','RR/MM/DD'),224,4,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (11,20,to_date('21/10/25','RR/MM/DD'),224,2,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (42,50,to_date('21/10/27','RR/MM/DD'),220,20,2);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (23,100,to_date('21/10/27','RR/MM/DD'),224,2,1);
Insert into PURCHASE (PC_NUM,PC_CNT,PC_DATE,FC_NUM,HQ_NUM,ORDER_STATUS) values (36,20,to_date('21/10/27','RR/MM/DD'),0,17,1);
--------------------------------------------------------
--  DDL for Index PK_PURCHASE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PURCHASE" ON "PURCHASE" ("PC_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "PURCHASE" MODIFY ("PC_NUM" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_CNT" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_DATE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" ADD CONSTRAINT "PK_PURCHASE" PRIMARY KEY ("PC_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "PURCHASE" ADD CONSTRAINT "FK_ITEMS_TO_PURCHASE" FOREIGN KEY ("HQ_NUM")
	  REFERENCES "ITEMS" ("HQ_NUM") ENABLE;
