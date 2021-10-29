--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REGISTERS
--------------------------------------------------------

  CREATE TABLE "REGISTERS" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"USERPWD" VARCHAR2(100 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"BIRTH" VARCHAR2(20 BYTE), 
	"TEL" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"MEMBERSHIP" NUMBER DEFAULT 0, 
	"REGDATE" DATE DEFAULT sysdate, 
	"ADDR" VARCHAR2(200 BYTE), 
	"AUTH" VARCHAR2(20 BYTE) DEFAULT '기본'
   ) ;
REM INSERTING into REGISTERS
SET DEFINE OFF;
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('banana123','Rhrnak123!','이영화','2021-10-06','01031173688','lyh4671@naver.com',4,to_date('21/10/22','RR/MM/DD'),'03900/서울 마포구 가양대로 1/가양아파트/ (상암동)','fran');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('banana1239','Rhrnak123!','김성규','2021-10-03','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'06038/서울 강남구 도산대로 지하 102/신사아파트/ (신사동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('donghyun','Dongdong12!','박동현','1973-10-10','01031173688','lyh4671@naver.com',1,to_date('21/10/23','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('squidgame456','Dongdong12!','성기훈','1974-04-05','01004560456','needagirl88@gmail.com',null,to_date('21/10/27','RR/MM/DD'),'06036/서울 강남구 가로수길 10/0456/ (신사동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('rkawk37','Rhrnak123!','이정현','1991-10-10','01012345678','lyh4671@naver.com',0,to_date('21/10/27','RR/MM/DD'),'18148/경기 오산시 부산중앙로 11/갈매기아파트/ (부산동, 오산시티자이 1단지)','기본');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink1','Ehdgus1219!','버버벅','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/03','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink2','Ehdgus1219!','비비빅','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/27','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink3','Ehdgus1219!','김민지','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/26','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink4','Ehdgus1219!','김민석','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/25','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink5','Ehdgus1219!','김민수','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/24','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink6','Ehdgus1219!','김진우','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/23','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink7','Ehdgus1219!','유지나','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/22','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink8','Ehdgus1219!','이제석','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink9','Ehdgus1219!','김동민','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/20','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink10','Ehdgus1219!','장재진','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/19','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink11','Ehdgus1219!','이상오','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/18','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink12','Ehdgus1219!','김회창','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/17','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink13','Ehdgus1219!','신예지','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/16','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink14','Ehdgus1219!','김주하','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/15','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink15','Ehdgus1219!','이찬혁','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/14','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink16','Ehdgus1219!','박지현','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/13','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink17','Ehdgus1219!','강수정','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/12','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink18','Ehdgus1219!','백지수','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/11','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink19','Ehdgus1219!','홍성호','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/10','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink20','Ehdgus1219!','김세준','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/09','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink21','Ehdgus1219!','김종수','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/08','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink22','Ehdgus1219!','박성배','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/07','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink23','Ehdgus1219!','임은준','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/06','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink24','Ehdgus1219!','강강호','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/05','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink25','Ehdgus1219!','이동웅','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/04','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink26','Ehdgus1219!','허선호','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/09/04','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink27','Ehdgus1219!','이지은','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/10/13','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('drink28','Ehdgus1219!','신세림','19950809','1033213219','qjqjejr@naver.com',3,to_date('21/09/03','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('master123','Ehdgus1219!','관리자','19951219','01071921311','happy951219@naver.com',3,to_date('21/09/03','RR/MM/DD'),'04111/서울 서대문구 서강대길 7/신수동/ (신수동)','master');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma12356','Rkqxo1156!','김효은','1991-10-02','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'04081/서울 마포구 와우산로 4/르메르디앙1212/ (상수동, 상수동 월드메르디앙 Ⅲ)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma555','Rhrnak123!','김별','2021-10-06','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'13475/경기 성남시 분당구 서판교로 99/판교대로/ (판교동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow1','12345','김서준','19880628','01034323212','rkdghehd212@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow2','12345','이하준','19950511','01034433212','dbwotjr3223@naver.com',3,to_date('20/12/05','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow3','12345','도윤','19790922','01076733212','rladudgks3212@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow4','12345','박시우','19601225','01076773212','rladuddn5654@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow5','12345','차은우','19951224','01076709782','rlacksgh5451@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow6','12345','이지호','19900401','01076702912','dlwndud0948@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow7','12345','이예준','19730510','01076726112','dhwnstjr3232@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow8','12345','강민준','19711221','01023872611','wnwodud1231@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow9','12345','하유준','19950523','01023887611','dhalsdnr7664@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow10','12345','이주원','19901229','01034887611','ghkddpckd5423@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow11','12345','김이준','19700321','01083887611','rlaghlrhs2313@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow12','12345','신우진','19700521','01083880961','dldpfla7651@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow13','12345','양지한','19700121','01076510961','tlswpcjf3231@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow14','12345','강정우','19700222','01076509461','rlagnstjq3281@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow15','12345','황유찬','19710810','01076510921','ghdtnqls9713@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow16','12345','김승우','19800727','01076297121','rlawjdgh3217@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow17','12345','조시안','19930608','01023217621','qkrdmdtj5413@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow18','12345','박민재','19770108','01098617621','rkddntjr4311@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow19','12345','한은호','199400323','01098751492','thsehdrms7621@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('wow20','12345','이다온','19971027','01098751423','qkrrnrghks3218@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('doyouknowbts1','12345','유하린','199400323','01098987231','thsehdrms7621@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('doyouknowbts2','12345','서수아','19971027','01087127231','qkrrnrghks3218@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple','1234','김동현','19951219','01071921311','happy951219@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('banana','12345','강호동','19700220','01120968765','rkdghehd@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('appp1','12345','김국진','19950511','010-2153-6122','dbwotjr@naver.com',3,to_date('20/12/05','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple2','12345','김영한','19790922','01065092281','rladudgks@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple3','12345','김영웅','19601225','01029182212','rladuddn@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple4','12345','김찬호','19951224','01076765541','rlacksgh@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple5','12345','이주영','19900401','01043122212','dlwndud@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple6','12345','오준석','19730510','01052123212','dhwnstjr@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple7','12345','주재영','19711221','01089109921','wnwodud@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple8','12345','오민욱','19950523','01023912281','dhalsdnr@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple9','12345','황예창','19901229','01037819921','ghkddpckd@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple10','12345','김회곤','19700321','01020991201','rlaghlrhs@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple11','12345','이예림','19700521','01055192212','dldpfla@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple12','12345','신제철','19700121','01077610211','tlswpcjf@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple13','12345','김훈섭','19700222','01088901281','rlagnstjq@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple14','12345','홍수빈','19710810','01078992801','ghdtnqls@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple15','12345','김정호','19800727','01089109982','rlawjdgh@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple16','12345','박응서','19930608','01065432143','qkrdmdtj@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple17','12345','강우석','19770108','01088762123','rkddntjr@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple18','12345','손동근','199400323','01082112312','thsehdrms@nate.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('apple1','12345','박국환','19971027','01088219872','qkrrnrghks@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04111/서울 마포구 서강대길 7/신수동/ (신수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma','1234','고구마','1978-06-08','01988729901','bitcampgo@naver.com',3,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great1','1234','강하늘',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great2','1234','이하림',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great3','1234','배민지',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great4','1234','이유리',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great5','1234','김지현',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('great6','1234','안현지',null,null,null,null,to_date('21/10/21','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','가맹점주');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('some2','dlthadlek12!A','신이솜','2002-10-03','01031112514','lyh4671@naver.com',4,to_date('21/10/23','RR/MM/DD'),'42463/대구 남구 경상길 5/우주아파트/ (대명동)','fran');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('something12','Rkawk37!','김동현','1997-10-02','01031541992','lyh4671@naver.com',null,to_date('21/10/23','RR/MM/DD'),'13479/경기 성남시 분당구 서판교로 32/판교/ (판교동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('suyoung91','tnduddlEk1!','장수영','1991-10-02','01011555511','lyh4671@naver.com',4,to_date('21/10/23','RR/MM/DD'),'04081/서울 마포구 와우산로 4/상수월드메르디앙/ (상수동, 상수동 월드메르디앙 Ⅲ)','master');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('eunjeong91','Rkawk37!','이은정','1992-01-04','01051112525','lyh4671@naver.com',3,to_date('21/10/25','RR/MM/DD'),'03906/서울 마포구 가양대로 114/가양아파트/ (상암동)','관리자');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('dong11','Dog123!!','김새롬','2021-02-09','01031173688','lyh4671@naver.com',0,to_date('21/10/27','RR/MM/DD'),'06035/서울 강남구 가로수길 5/가로수길/ (신사동)','기본');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma1234','Rhrnak123!',' 성지수','2008-10-03','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'13480/경기 성남시 분당구 대왕판교로 477/23-11/ (판교동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('banana1234','Rhrnak123!','홍길동','2021-10-05','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'13480/경기 성남시 분당구 대왕판교로 477/낙생고/ (판교동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('banana12345','Rhrnak123!','김동현','2021-09-08','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'13479/경기 성남시 분당구 서판교로 32/판교12/ (판교동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma55','Rhrnak123!','김성규','2021-10-13','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'04075/서울 마포구 와우산로 8-5/가양아파트/ (상수동)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('goguma66','Rhrnak123!','김재효','2021-10-08','01031173688','lyh4671@naver.com',0,to_date('21/10/28','RR/MM/DD'),'04081/서울 마포구 와우산로 4/메르시아파트205호/ (상수동, 상수동 월드메르디앙 Ⅲ)','member');
Insert into REGISTERS (USERID,USERPWD,USERNAME,BIRTH,TEL,EMAIL,MEMBERSHIP,REGDATE,ADDR,AUTH) values ('abc1004','Rkawk123!','송혜교','2021-10-08','01031173688','lyh4671@naver.com',0,to_date('21/10/29','RR/MM/DD'),'13479/경기 성남시 분당구 서판교로 40/판교아파트/ (판교동)','member');
--------------------------------------------------------
--  DDL for Index PK_REGISTERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REGISTERS" ON "REGISTERS" ("USERID") 
  ;
--------------------------------------------------------
--  Constraints for Table REGISTERS
--------------------------------------------------------

  ALTER TABLE "REGISTERS" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" MODIFY ("USERPWD" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" MODIFY ("ADDR" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" MODIFY ("AUTH" NOT NULL ENABLE);
  ALTER TABLE "REGISTERS" ADD CONSTRAINT "PK_REGISTERS" PRIMARY KEY ("USERID")
  USING INDEX  ENABLE;
