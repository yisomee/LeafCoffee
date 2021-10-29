--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ITEMS
--------------------------------------------------------

  CREATE TABLE "ITEMS" 
   (	"HQ_NUM" NUMBER, 
	"HQ_NAME" VARCHAR2(50 BYTE), 
	"WARE_PRICE" NUMBER, 
	"PART_NUM" NUMBER
   ) ;
REM INSERTING into ITEMS
SET DEFINE OFF;
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (17,'우유(1.5l)',2500,4);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (18,'녹차가루',10000,1);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (20,'과나하7.5%다크초콜릿',100000,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (22,'두유1.5L',6000,1);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (8,'홀더',20,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (9,'콜롬비아(200g)',30000,2);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (10,'과테말라(200g)',30000,2);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (11,'헤이즐넛시럽',30000,4);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (26,'말차파우더200g',12000,4);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (33,'펌킨파우더',7000,1);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (1,'빨대',10000,1);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (2,'종이컵',20000,2);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (3,'딸기시럽',30000,3);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (4,'바닐라파우더',40000,4);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (5,'원두',50000,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (7,'밀크티',60000,3);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (13,'한라봉티백(180g)',30000,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (14,'애플티백(180g)',30000,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (15,'에티오피아(200g)',60000,1);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (16,'페퍼민트티백민(180g)',30000,5);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (21,'수제유자청',60000,3);
Insert into ITEMS (HQ_NUM,HQ_NAME,WARE_PRICE,PART_NUM) values (23,'저지방우유1.5L',4500,6);
--------------------------------------------------------
--  DDL for Index PK_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEMS" ON "ITEMS" ("HQ_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" MODIFY ("HQ_NUM" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("HQ_NAME" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("WARE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("PART_NUM" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" ADD CONSTRAINT "PK_ITEMS" PRIMARY KEY ("HQ_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" ADD CONSTRAINT "FK_PARTNER_TO_ITEMS" FOREIGN KEY ("PART_NUM")
	  REFERENCES "PARTNER" ("PART_NUM") ENABLE;
