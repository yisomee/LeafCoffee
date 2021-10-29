--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FRANCHISE
--------------------------------------------------------

  CREATE TABLE "FRANCHISE" 
   (	"FC_NUM" NUMBER DEFAULT "S1"."NEXTVAL", 
	"FC_NAME" VARCHAR2(50 BYTE), 
	"FC_BOSS" VARCHAR2(20 BYTE), 
	"FC_TRANSPORT" VARCHAR2(200 BYTE), 
	"FC_ADDR" VARCHAR2(200 BYTE), 
	"USERID" VARCHAR2(20 BYTE), 
	"FC_TEL" VARCHAR2(50 BYTE) DEFAULT '-', 
	"LON" VARCHAR2(15 BYTE), 
	"LAT" VARCHAR2(15 BYTE), 
	"FC_IMG" VARCHAR2(100 BYTE)
   ) ;
REM INSERTING into FRANCHISE
SET DEFINE OFF;
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (211,'압구정로  ',null,null,'서울특별시 강남구 압구정로42길 32 (신사동)1522-3232',null,'-','127.0347226','37.5268082','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (212,'압구정역  ',null,null,'서울특별시 강남구 압구정로 170  관영빌딩 1층 지하1층 (신사동)1522-3232',null,'-','127.0281047','37.526735','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (213,'선릉세화빌딩  ',null,null,'서울특별시 강남구 테헤란로64길 18 (대치동) 1층1522-3232',null,'-','127.0511864','37.5037306','sirenImg2.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (214,'삼성  ',null,null,'서울특별시 강남구 테헤란로 443  애플트리타워 1층 (삼성동)1522-3232',null,'-','127.0555833','37.5069114','sirenImg3.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (215,'SSG마켓도곡R  ',null,null,'서울특별시 강남구 언주로30길 57  타워팰리스Ⅱ F 지하1층 (도곡동)1522-3232',null,'-','127.0550365','37.4895333','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (216,'대치  ',null,null,'서울특별시 강남구 도곡로 511 (대치동)1522-3232',null,'-','127.0622226','37.499591','sirenImg5.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (217,'학동역  ',null,null,'서울특별시 강남구 논현로 704 (논현동)1522-3232',null,'-','127.0315341','37.5135304','sirenImg6.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (218,'삼성교  ',null,null,'서울특별시 강남구 영동대로86길 12  동남유화빌딩 1층1522-3232',null,'-','127.0652928','37.5078813','sirenImg7.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (219,'삼성도심공항  ',null,null,'서울특별시 강남구 테헤란로87길 33 (삼성동)1522-3232',null,'-','127.0579134','37.5097863','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (220,'청담  ','이영화',null,'서울특별시 강남구 도산대로 532  인희빌딩 1층 (청담동)1522-3232','banana123','010-3117-3688','127.0515599','37.5243631','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (221,'강남대로  ',null,null,'서울특별시 강남구 강남대로 456  한석타워 2층 1-2호 (역삼동)1522-3232',null,'-','127.0255689','37.5030912','sirenImg10.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (222,'역삼포스코  ',null,null,'서울특별시 강남구 테헤란로 134  P TOWER (역삼동)1522-3232',null,'-','127.0337927','37.4993385','sirenImg11.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (223,'역삼대로  ',null,null,'서울특별시 강남구 테헤란로 211  한국고등교육재단빌딩 1층 (역삼동)1522-3232',null,'-','127.0393238','37.5018296','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (224,'가로수길  ','신이솜',null,'서울특별시 강남구 논현로175길 94  1~2층 (신사동)1522-3232','some2','010-2648-9634','127.021625','37.5231593','sirenImg2.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (225,'코엑스몰  ',null,null,'서울특별시 강남구 영동대로 513 (삼성동) O103호1522-3232',null,'-','127.0585824','37.5101935','sirenImg3.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (226,'역삼초교사거리  ',null,null,'서울특별시 강남구 역삼로 123 (역삼동)1522-3232',null,'-','127.0330019','37.4941005','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (227,'한티역  ',null,null,'서울특별시 강남구 도곡로 408  디마크빌딩 101호 (대치동)1522-3232',null,'-','127.055214','37.4966281','sirenImg5.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (228,'청담사거리  ',null,null,'서울특별시 강남구 도산대로 458 (청담동) 리츠타워1522-3232',null,'-','127.0468235','37.5238564','sirenImg6.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (229,'서울세관사거리  ',null,null,'서울특별시 강남구 언주로 650 (논현동) 한국건설기술인협회1522-3232',null,'-','127.0357562','37.5148928','sirenImg7.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (230,'도곡역  ',null,null,'서울특별시 강남구 남부순환로 2909 (대치동)1522-3232',null,'-','127.0610527','37.4994914','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (231,'신사역  ',null,null,'서울특별시 강남구 도산대로 108 (논현동) 렉스타워1522-3232',null,'-','127.020635','37.516159','sirenImg9.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (232,'을지병원사거리  ',null,null,'서울특별시 강남구 논현로 752 (논현동 구산빌딩)1522-3232',null,'-','127.0346042','37.5189305','sirenImg10.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (233,'포스코사거리  ',null,null,'서울특별시 강남구 테헤란로 505 (삼성동) 화진빌딩1522-3232',null,'-','127.0574271','37.5075307','sirenImg11.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (234,'대치사거리  ',null,null,'서울특별시 강남구 삼성로 402 (대치동)1522-3232',null,'-','127.0610527','37.4994914','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (235,'학동사거리  ',null,null,'서울특별시 강남구 도산대로 328 (논현동)1522-3232',null,'-','127.0379543','37.5223645','sirenImg2.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (236,'강남우성  ',null,null,'서울특별시 강남구 강남대로 328 (역삼동)1522-3232',null,'-','127.0373932','37.4999072','sirenImg3.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (237,'청담스타R  ',null,null,'서울특별시 강남구 도산대로57길 24 (청담동)1522-3232',null,'-','127.0417938','37.5252304','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (238,'신사가로수  ',null,null,'서울특별시 강남구 가로수길 59 1522-3232',null,'-','127.022951','37.524609','sirenImg5.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (239,'압구정  ',null,null,'서울특별시 강남구 압구정로30길 17 (신사동)1522-3232',null,'-','127.0295189','37.5262636','sirenImg6.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (240,'청담영동대로  ',null,null,'서울특별시 강남구 영동대로 720 (청담동)1522-3232',null,'-','127.0486655','37.5231998','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (241,'대치은마사거리  ',null,null,'서울특별시 강남구 도곡로 457 (대치동)1522-3232',null,'-','127.060172','37.4989728','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (242,'강남R  ',null,null,'서울특별시 강남구 강남대로 390 (역삼동)1522-3232',null,'-','127.028587','37.497853','sirenImg2.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (243,'도곡공원  ',null,null,'서울특별시 강남구 도곡로 205 (역삼동)1522-3232',null,'-','127.0412545','37.493073','sirenImg3.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (244,'강남구청정문  ',null,null,'서울특별시 강남구 학동로 419 (청담동)1522-3232',null,'-','127.0486655','37.5231998','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (245,'스타필드코엑스몰R  ',null,null,'서울특별시 강남구 영동대로 513 (삼성동) 코엑스 A106호1522-3232',null,'-','127.0595914','37.5111835','sirenImg5.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (246,'강남오거리  ',null,null,'서울특별시 강남구 봉은사로2길 39 (역삼동)1522-3232',null,'-','127.0266414','37.5020667','sirenImg6.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (247,'봉은사로선정릉  ',null,null,'서울특별시 강남구 봉은사로 446 (삼성동)1522-3232',null,'-','127.048547','37.5112773','sirenImg7.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (248,'선릉동신빌딩R  ',null,null,'서울특별시 강남구 테헤란로 409 (삼성동)1522-3232',null,'-','127.0503634','37.5053116','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (249,'양재강남빌딩R  ',null,null,'서울특별시 강남구 남부순환로 2621 (도곡동)1522-3232',null,'-','127.0438136','37.4898434','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (250,'수서역R  ',null,null,'서울특별시 강남구 광평로 281 (수서동)1522-3232',null,'-','127.1026505','37.4879723','sirenImg10.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (251,'압구정R  ',null,null,'서울특별시 강남구 언주로 861 (신사동)1522-3232',null,'-','127.0252724','37.5226879','sirenImg11.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (252,'삼성역섬유센터R  ',null,null,'서울특별시 강남구 테헤란로 518 (대치동)1522-3232',null,'-','127.060561','37.5075512','sirenImg1.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (253,'코엑스별마당  ',null,null,'서울특별시 강남구 영동대로 513 (삼성동)1522-3232',null,'-','127.0585824','37.5101935','sirenImg2.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (254,'압구정윤성빌딩  ',null,null,'서울특별시 강남구 논현로 834 (신사동)1522-3232',null,'-','127.022883','37.524124','sirenImg3.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (255,'봉은사역  ',null,null,'서울특별시 강남구 봉은사로 619 (삼성동)1522-3232',null,'-','127.0631169','37.5149998','sirenImg4.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (256,'스탈릿대치R  ',null,null,'서울특별시 강남구 남부순환로 2947 (대치동)1522-3232',null,'-','127.0610527','37.4994914','sirenImg5.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (257,'국기원사거리  ',null,null,'서울특별시 강남구 테헤란로 125 (역삼동)1522-3232',null,'-','127.0316604','37.499549','sirenImg6.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (258,'신사역성일빌딩  ',null,null,'서울특별시 강남구 강남대로 584 (논현동)1522-3232',null,'-','127.0315341','37.5135304','sirenImg7.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (259,'논현역사거리  ',null,null,'서울특별시 강남구 강남대로 538 (논현동)1522-3232',null,'-','127.0315341','37.5135304','sirenImg8.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (260,'역삼아레나빌딩  ',null,null,'서울특별시 강남구 언주로 425 (역삼동)1522-3232',null,'-','127.0430285','37.5010689','sirenImg9.jpg');
Insert into FRANCHISE (FC_NUM,FC_NAME,FC_BOSS,FC_TRANSPORT,FC_ADDR,USERID,FC_TEL,LON,LAT,FC_IMG) values (3,'서강대점','서강준',null,'서울 마포구 백범로 2',null,'010-1234-5678',null,null,'sirenImg10.jpg');
--------------------------------------------------------
--  DDL for Index PK_FRANCHISE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FRANCHISE" ON "FRANCHISE" ("FC_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table FRANCHISE
--------------------------------------------------------

  ALTER TABLE "FRANCHISE" MODIFY ("FC_NUM" NOT NULL ENABLE);
  ALTER TABLE "FRANCHISE" MODIFY ("FC_NAME" NOT NULL ENABLE);
  ALTER TABLE "FRANCHISE" MODIFY ("FC_ADDR" NOT NULL ENABLE);
  ALTER TABLE "FRANCHISE" ADD CONSTRAINT "PK_FRANCHISE" PRIMARY KEY ("FC_NUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FRANCHISE
--------------------------------------------------------

  ALTER TABLE "FRANCHISE" ADD CONSTRAINT "FK_REGISTERS_TO_FRANCHISE" FOREIGN KEY ("USERID")
	  REFERENCES "REGISTERS" ("USERID") ENABLE;
