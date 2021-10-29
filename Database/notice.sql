--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NO" NUMBER, 
	"USERID" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(500 BYTE), 
	"WRITEDATE" DATE DEFAULT sysdate, 
	"HIT" NUMBER DEFAULT 0, 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"N_IMG" VARCHAR2(50 BYTE)
   ) ;
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (85,'goguma','커넥트 오더 두유, 오트밀크 옵션 선택 가능 안내',to_date('21/10/25','RR/MM/DD'),0,'<p>커넥트 오더 두유, 오트밀크 옵션 선택 가능 안내<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (86,'goguma','leaf 자동 충전 설정 방법 안내',to_date('21/10/25','RR/MM/DD'),0,'<p>leaf 자동 충전 설정 방법 안내<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (87,'goguma','leaf 미아 현대점 영업 종료 안내 ',to_date('21/10/25','RR/MM/DD'),0,'<p>미아 현대점 영업 종료 안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (88,'goguma',' Platinum 승급축하 쿠폰 혜택 변경 및 교환 안내 ',to_date('21/10/25','RR/MM/DD'),0,'<p>&nbsp;Platinum 승급축하 쿠폰 혜택 변경 및 교환 안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (89,'goguma','코로나 19로 인한 일부 매장 영업시간 변경 안내 ',to_date('21/10/25','RR/MM/DD'),2,'<p>코로나 19로 인한 일부 매장 영업시간 변경 안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (93,'goguma','무민MD 3종 재고 보유 매장 안내 ',to_date('21/10/25','RR/MM/DD'),1,'<p>무민MD 3종 재고 보유 매장 안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (94,'goguma','leaf Good Morning Set',to_date('21/10/25','RR/MM/DD'),21,'<p></p><p></p><ul><li style="text-align: left;"></li></ul><p></p><p></p><ul></ul><span style="color: rgb(98, 96, 95);">&nbsp; &nbsp; &nbsp; &nbsp;leaf에서 든든한 아침을 위해 Good Morning Set를 선보입니다.</span><p></p><p><span style="color: rgb(98, 96, 95); font-family: NotoSans, " 맑은="" 고딕",="" "malgun="" gothic",="" nanumgothic,="" dotum,="" 돋움,="" gulim,="" 굴림,="" helvetica,="" sans-serif;="" font-size:="" 15px;="" text-align:="" center;"="">커피와 함께 엄선한 재료로 만든 Food로 신선한 아침을 시작해보세요.</span><br style="word-break: break-all; color: rgb(98, 96, 95); font-family: NotoSans, " 맑은="" 고딕",="" "malgun="" gothic",="" nanumgothic,="" dotum,="" 돋움,="" gulim,="" 굴림,="" helvetica,="" sans-serif;="" font-size:="" 15px;="" text-align:="" center;"=""><br style="word-break: break-all; color: rgb(98, 96, 95); font-family: NotoSans, " 맑은="" 고딕",="" "malgun="" gothic",="" nanumgothic,="" dotum,="" 돋움,="" gulim,="" 굴림,="" helvetica,="" sans-serif;="" font-size:="" 15px;="" text-align:="" center;"=""><span style="color: rgb(98, 96, 95); font-family: NotoSans, " 맑은="" 고딕",="" "malgun="" gothic",="" nanumgothic,="" dotum,="" 돋움,="" gulim,="" 굴림,="" helvetica,="" sans-serif;="" font-size:="" 15px;="" text-align:="" center;"="">오전 11시 전에 leaf를 방문하시면 Good Morning Set를 특별한 가격에 만나볼 수 있습니다.</span><br></p><p></p><p></p><p style="text-align: left;"><br></p><p></p>','noticeDe3.png');
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (95,'goguma','leaf 선물세트 출시 안내',to_date('21/10/25','RR/MM/DD'),29,'<p style="word-break: break-all; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;"></p><div style="text-align: center;"><span style="font-size: 1rem;">Thank you, For you</span></div><div style="text-align: center;"><br></div><div style="text-align: center;"><span style="font-size: 1rem;">leaf 선물세트로 감사의 마음을 전하세요.</span></div><div style="text-align: center;"><br></div><div style="text-align: center;"><br></div><div style="text-align: center;"><span style="font-size: 1rem;">[ 선물세트 포장 서비스 안내]</span></div><div style="text-align: center;"><br></div><div style="text-align: center;"><span style="font-size: 1rem;">leaf 원두, 바리스타 파우치, 구움과자, MD 등 다양한 상품으로 직접 추석 선물세트를 구성 하시면 고급 선물 박스로 포장해 드립니다.</span></div><div style="text-align: center;"><br></div><div style="text-align: center;"><span style="font-size: 1rem;">선물 박스 포장 서비스는 프로모션 기간에 한정되며, 19,000원 이상 구매 시 해당됩니다.</span></div><p></p><p style="word-break: break-all; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;"><br style="word-break: break-all; color: rgb(98, 96, 95); font-family: NotoSans, &quot;맑은 고딕&quot;, &quot;Malgun Gothic&quot;, NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif; font-size: 15px; text-align: center;"></p>','noticeDe2.png');
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (96,'goguma','leaf AK 플라자 광명점 오픈 안내',to_date('21/10/25','RR/MM/DD'),41,'<p style="text-align: center; ">leaf <font color="#62605f" face="NotoSans, 맑은 고딕, Malgun Gothic, NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif"><span style="font-size: 15px;">가 </span></font><span style="color: rgb(98, 96, 95); font-family: NotoSans, "맑은 고딕", "Malgun Gothic", NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif; font-size: 15px;">10월 27일 AK플라자 광명점에 신규 매장을 오픈 합니다. </span></p><p align="center" style="word-break: break-all; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(98, 96, 95); font-family: NotoSans, "맑은 고딕", "Malgun Gothic", NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif; font-size: 15px; text-align: center;">고객 여러분의 많은 관심과 사랑 부탁드립니다. <br></p><p align="center" style="word-break: break-all; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(98, 96, 95); font-family: NotoSans, "맑은 고딕", "Malgun Gothic", NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif; font-size: 15px; text-align: center;"><br style="word-break: break-all;"></p><p align="center" style="word-break: break-all; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(98, 96, 95); font-family: NotoSans, "맑은 고딕", "Malgun Gothic", NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif; font-size: 15px; text-align: center;">주소: 경기도 광명시 신기로 20 AK플라자 광명점 1층</p>','noticeDe.png');
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (82,'goguma','할로윈 홀케이크 사전예약 이벤트',to_date('21/10/25','RR/MM/DD'),0,'<p>할로윈 홀케이크 사전예약 이벤트<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (81,'goguma','leaf 자동 충전 이벤트 (3만원 이상 자동충전시 free beverage)쿠폰 ',to_date('21/10/25','RR/MM/DD'),0,'<p>leaf 자동 충전 이벤트 (3만원 이상 자동충전시 free beverage)쿠폰&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (83,'goguma','고객센터 운영 카카오 상담톡으로 변경',to_date('21/10/25','RR/MM/DD'),0,'<p>고객센터 운영 카카오 상담톡으로 변경<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (84,'goguma','<leaf> 개인정보취급방침 개정 안내 ',to_date('21/10/25','RR/MM/DD'),0,'<p>&lt;leaf&gt; 개인정보취급방침 개정 안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (90,'goguma','베리베리 피스타치오 타르트 디자인 변경 안내',to_date('21/10/25','RR/MM/DD'),1,'<p>베리베리 피스타치오 타르트 디자인 변경 안내<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (91,'goguma','leaf 개인정보취급 방침 개정안내 ',to_date('21/10/25','RR/MM/DD'),0,'<p>leaf 개인정보취급 방침 개정안내&nbsp;<br></p>',null);
Insert into NOTICE (NO,USERID,TITLE,WRITEDATE,HIT,CONTENT,N_IMG) values (92,'goguma','leaf 모바일앱 서비스 정상화 안내 ',to_date('21/10/25','RR/MM/DD'),0,'<p>leaf 모바일앱 서비스 정상화 안내&nbsp;<br></p>',null);
--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOTICE" ON "NOTICE" ("NO") 
  ;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("WRITEDATE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_REGISTERS_TO_NOTICE" FOREIGN KEY ("USERID")
	  REFERENCES "REGISTERS" ("USERID") ENABLE;
