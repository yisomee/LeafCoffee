--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-29-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "MENU" 
   (	"P_NUM" NUMBER, 
	"M_CODE" VARCHAR2(50 BYTE), 
	"S_CODE" VARCHAR2(50 BYTE), 
	"P_NAME" VARCHAR2(50 BYTE), 
	"P_ENAME" VARCHAR2(20 BYTE), 
	"P_PRICE" NUMBER, 
	"P_DESC" VARCHAR2(300 BYTE), 
	"P_INFO" VARCHAR2(200 BYTE), 
	"NEW_BEST" VARCHAR2(20 BYTE), 
	"P_IMG" VARCHAR2(50 BYTE)
   ) ;
REM INSERTING into MENU
SET DEFINE OFF;
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (12,'coffee','latte','프란체','franchaelatte',4100,'에스프레소와 우유가 어우러져 진한 바디감과 부드러운 풍미를 느낄 수 있는 라떼 음료','200/10/10/10/10/10/10','new','JejuHallabongAde.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (40,'food','cake','몽블랑 케이크','Montblanc Cake',5800,'밤 스프레드를 넣은 치즈 케이크 위에 부드러운 생크림, 달콤한 밤 크림을 층층이 쌓은 후 보늬밤을 올려 가을의 맛을 살린 케이크입니다.','160/570/40/13/6/310/1',null,'mong.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (18,'coffee','latte','피스타치오라떼','Pistachio Latte',6800,'피스타치오 아이스크림 베이스에 아몬드 브리즈의 고소함과 스페니쉬 크림의 달콤함을 더해 부드럽게 즐길 수 있는 견과류 라떼 입니다','360/325/31/115/8/9/0','new','pistachiolatte.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (25,'coffee','espresso','에스프레소','Espresso',3800,'전 세계 커피 생산량 중 7%정도 뿐인 스페셜티 원두 만으로 추출한 에스프레소 입니다. 향긋, 달콤하고 묵직하지만 쓰지 않은 새로운 에스프레소를 즐겨보세요. 기본 2샷 60ml (크레마 제외 34g) 제공됩니다.','60/15/0/0/1/0/225','best','Espresso.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (32,'food','cake','제주 가나슈 케이크','Jeju Ganache Cake',6600,'제주산 녹차와 화이트 초콜릿을 넣어 만든 가나슈와 달콤한 초콜릿 시트를 층층이 쌓은 후 하얀 크림을 올려 마무리한 케이크','120/425/10/70/6/14/2',null,'green.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (34,'coffee','shot','룽고','Lungo',4300,'LEAF 만의 레시피로 추출한 스윗 디저트 스타일의 에스프레소로 만들어 시그니처 블렌드의 향과 풍미를 진하고 풍부하게 느낄 수 있는 폴 바셋 시그니처 메뉴입니다.','360/15/0/0/0/0/185','best','americano.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (47,'food','bakery','에쉬레 버터쿠키','Échiré Cookie',2000,'AOP인증을 받은 에쉬레 버터로 만들어 진하고 고소한 버터 풍미와 부드러운 식감이 돋보이는 쿠키','85/346/3/163/5/4/0',null,'echire.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (43,'coffee','shot','콜드브루','Cold Brew',4500,'달콤한 연유크림과 깔끔한 스페셜티 콜드브루','360/125/6/25/2/6/200','new','Cold Blew.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (44,'food','bakery','플레인 마들렌','Plain Madeleine',2500,'바닐라 향이 은은한 프랑스 정통 티푸드, ‘플레인 마들렌','20/82/6/80/1/0/0','best','madelen.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (48,'food','bakery','초콜릿 빨미까레','Palmier Carré',3600,'바삭한 패스츄리에 은은하고 깊은 맛의 초콜릿이 코팅된 제품','90/432/19/263/5/11/0','new','choco.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (49,'food','bakery','크루아상','Croissant',1900,'바삭하고 고소한 프랑스식 정통 크루아상','70/240/4/250/5/8/0',null,'cro.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (55,'beverage','ade','모히토에이드','MojitoAde',6000,'라임과 민트의 향이 가득한 상쾌한 여름 에이드 음료입니다','460/135/33/50/1/0/0','best','MojitoAde.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (53,'food','bakery','크로플','Croiffle',4700,'프랑스 버터의 풍미가 가득하고 바삭한 식감이 좋은 크루아상 와플 입니다.
','100/359/26/255/7/12/0',null,'croiffle.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (54,'food','bakery','우유크림 빵','Milk Cream Bread',2500,'하얗고 쫀득한 빵 속에 고소한 우유크림이 가득 담긴 우유크림빵
Best
','87/301/13/188/4/4/0',null,'milkbread.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (56,'beverage','yogurt','스트로베리 요거트','StrawberryYogurt',6500,'상큼한 요거트에 달콤한 딸기를 블렌딩하여 새콤달콤하게 즐길 수 있는 드링킹 요거트입니다. (생바나나가 포함되어 있습니다)','360/325/53/80/7/4/0','best','StrawberryYogurt.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (60,'beverage','tea','애플티','Apple',4500,'130년의 역사를 가진 프랑스 프리미엄 포숑티의 베스트셀러로 붉은 사과향이 감미로운 홍차입니다.','460/0/0/0/0/0/58',null,'Ice Apple.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (61,'product','Bean','에티오피아 구지 G1','Ethiopa GUJI G1',17000,'베리류의 상큼한 산미와 꽃 향기를 담은 에티오피아 구지 G1. 언제 어디서나 따뜻한 물과 바리스타 파우치로 스페셜티 커피의 맛과 향을 쉽게 즐길 수 있습니다','10/10/5/5/0/0/0',null,'etio.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (65,'beverage','ade','오렌지 당근 주스','Orange Carrot Juice',5500,'당근과 상큼한 시트러스 과일의 조화 (당근(Carrot), 유자(Citron), 사과(Apple), 오렌지(Orange))','360/115/23/45/1/0/0','new','Orange Carrot Juice.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (66,'product','Bean','캡슐 콜롬비아','Capsule Colombia',18000,'폴 바셋이 엄선한 스페셜티 등급의 원두로 만든 커피 캡슐 (네스프레소 머신 호환 가능)','0/0/0/0/0/20/20','new','pn5.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (77,'product','Tumbler','스프링 그린 텀블러','Spring Green',29000,'싱그러운 봄의 시작을 알리는 REUSABLE TUMBLER, SPRING GREEN','0/0/0/0/0/0/0',null,'GREENT.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (85,'product','product','앵글머그 355ml','Angle Mug',16000,'폴 바셋 머그만의 시그니처 디자인을 접목한 앵글 손잡이와 바리스타 폴 바셋 사인이 각인된 머그컵','0/0/0/0/0/0/0',null,'angle.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (35,'food','cake','흑임자 케이크','Black Sesame Cake',5500,'흑임자 갸또 위에 진한 흑임자 가나슈를 샌드하고 부드러운 흑임자 크림으로 마무리한 달콤한 디저트','120/506/10/107/8/19/2','best','blackcake.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (41,'coffee','espresso','초콜릿 콘파나','Chocolate Con Panna',4000,'프랑스 3대 초콜릿 발로나 초콜릿 파우더 풍미가 느껴지는 에스프레소 콘 파나','70/90/8/20/2/3/186','new','Chocolate Espresso.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (42,'food','cake','생크림 카스텔라','Cream Castella',4700,'부드러운 생크림이 듬뿍 들어있는 촉촉한 카스텔라입니다.','170/565/36/15/10/194/2',null,'cream.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (23,'food','cake','바스크 치즈케이크','Basque Cheese Cake',5200,'겉은 꾸덕하고 속은 촉촉하며 크림치즈의 풍미와 스모키한 캐러멜향이 조화로운 케이크','140/502/36/356/9/16/10',null,'bask.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (45,'food','bakery','까눌레','Cannele',2800,'프랑스 보로도 지방에서 유래 된 대표 구움과자','50/165/20/20/3/3/0','best','cannele.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (31,'coffee','latte','카페라떼','Cafe Latte',4300,'전통적으로 조식에 잘 마셨던 것으로 알려진 카페라떼는 에스프레소와 우유의 절묘한 조화가 매력적인 커피입니다. 에스프레소 드링크 중에서도 특히 부드럽고 향긋한 맛을 자랑합니다.','360/210/15/150/10/7/225','best','latte.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (33,'food','cake','제주오름 케이크','Jeju Green Tea Cake',4900,'부드럽고 달콤한 초코 쉬폰 케이크를 쌉싸름한 녹차 크림으로 감싸 제주 오름을 형상화 한 케이크','190/524/6/141/8/13/3','best','jejucake.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (50,'food','bakery','스모어 쿠키','S''more Cookie',3200,'쫀득한 마시멜로우와 코코아가 조화로운 수제 스타일의 쿠키','80/340/4/110/5/7/0','best','cookie.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (62,'beverage','tea','캐모마일티','Fauchon Chamomile',4300,'최상급 허브 티 원산지에서 수확한 은은한 꽃향의 최상급 허브티입니다.','460/0/0/0/0/0/0',null,'Fauchon Chamomile.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (63,'product','Bean','캡슐 시그니쳐','Capsule Signature',13000,'폴 바셋이 엄선한 스페셜티 등급의 원두로 만든 커피 캡슐 (네스프레소 머신 호환 가능)','10/10/0/0/0/0/0','new','pn6.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (70,'product','Bean','시그니처 스틱 커피','Signature Blend',18000,'시그니처 블렌드 원두를 추출 후 분말화하여 Hot, Ice, Milk 모두 즐길 수 있는 스틱 커피입니다. 우유에 넣어 즐기시면 더욱 맛있게 즐기실 수 있습니다.','0/0/0/0/0/0/15','best','Stick.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (78,'product','Tumbler','리유저블 (레드베리)','Tumbler (Red Berry)',24000,'가볍고 편리하게 사용 가능한 리유저블 텀블러입니다. 환경보호의 작은 실천과 사무실에서도 텀블러를 이용해보세요. ','0/0/0/0/0/0/0','new','RED.TUM.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (79,'product','Tumbler','매트 텀블러',' Matt Tumbler',19000,'폴 바셋만의 블랙 무광의 고급 텀블러입니다. 손잡이가 있어 휴대하기 좋은 실용적인 사이즈이고, BPA프리와 이중벽 진공단열 기능있어 보온과 보냉이 뛰어난 MD제품입니다.','0/0/0/0/0/0/0','best','MAT1.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (80,'product','Tumbler','핸디 텀블러','Handy Tumble',16000,'머그형식의 핸디형 스테인리스 보온보냉 텀블러입니다. 슬라인딩 뚜껑 적용으로 스트로우 함께 사용 가능며 휴대하기 편리한 MD제품입니다.','0/0/0/0/0/0/0',null,'HAND1.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (81,'product','Tumbler','메탈브라운 텀블러','Metallic brown',36000,' 클린 캔틴은 내부코팅이 없고 스테인리스 스틸을 사용하여 위생적입니다. ','0/0/0/0/0/0/0',null,'classPNG.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (82,'product','product','유로 머그 블랙','Mug Black',15000,'폴 바셋 로고 머그로, 그립감이 편리한 곡선 손잡이와 마시기 편리하게 곡선으로 디자인된 입구가 특징입니다','0/0/0/0/0/0/0','best','mug1.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (83,'product','product','머그 화이트','Mug White',15000,'폴 바셋 로고 머그로, 그립감이 편리한 곡선 손잡이와 마시기 편리하게 곡선으로 디자인된 입구가 특징입니다.','0/0/0/0/0/0/0',null,'mug2.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (84,'product','product','글라스컵','Glass Cup (300ml)',10000,'투명색의 휴대성이 용의합니다.','0/0/0/0/0/0/0','best','g.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (88,'coffee','latte','펌킨라떼','Pumpkin Latte',7000,'할로윈하면 생각나는 호박을 사용한 아이스 라떼 입니다. 
밀크 아이스크림 토핑이 추가되어 달콤함이 풍부해졌어요.','11/12/12/2/1/1/0','new','PumpkinLatte.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (89,'coffee','latte','펌킨라떼','Pumpkin Latte',7000,'할로윈을 맞아 신메뉴 출시 (달콤한 단호박맛)','65/5/50/60/10/10/2','new','PumpkinLatte.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (1,'beverage','ade','제주한라봉에이드','jejuhallabongade',6000,'깨끗한 제주 자연의 맛을 느낄 수 있는 달콤한 에이드','200/10/10/10/10/10/10','new','JejuHallabongAde.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (3,'coffee','latte','아이스크림라떼','Icecream Latte',6000,'에스프레소로 만든 고소한 라떼 위에 우유 본연의 풍미가 매력적인 아이스크림라떼','300/50/10/10/10/10/10','best','icecreamlatte.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (4,'coffee','shot','아메리카노','Americano',4300,' 시그니처 블렌드로 추출한 에스프레소로 만든 부드럽고 깔끔한 가장 대중적인 커피 메뉴입니다.','360/10/5/0/0/0/160',null,'americano.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (5,'beverage','tea','아이스얼그레이','Fauchon Earl Grey',4000,'130년의 프랑스 프리미엄티 포숑의 베르가못 감귤류향이 항긋한 홍차입니다.','460/0/0/0/0/0/85','new','IceEarlGrey.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (28,'coffee','latte','제주 말차 카페 라떼','Malcha Cafe Latte',6800,'진한 말차 풍미가 뛰어난 제주말차 라떼에 에스레소가 더해져 고소한 맛과 쌉싸름하면서 깔끔한 끝맛이 좋은 카페라떼 입니다','360/190/25/70/7/2.9/320',null,'malcha.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (29,'food','cake','우유크림 롤','Milk Cream Roll',3500,'매일우유 생크림을 넣은 고소한 크림이 꽉 차 있는 롤 케이크','90/285/19/55/5/10/2','new','milkroll.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (30,'coffee','latte','카라멜 마키아토','Caramel Macchiato',7000,'부드러운 연유 풍미에 밀크 카라멜 본연의 맛을 담은 라떼입니다. (우유 변경 옵션 미적용 음료입니다)','360/405/43/170/8/12/225',null,'caramel.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (26,'food','cake','헤이즐넛 케이크','Dark Hazelnut Cake',6500,'초코 시트와 초코 크림을 쌓아 올린 후 헤이즐넛 분태를 섞은 벨기에산 다크 초콜릿으로 코팅한 케이크','160/590/35/170/14/10/2','new','darkcake.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (57,'product','Bean','시그니처 블렌드','Signature Blend',16000,'Well-balanced Sweet Dessert style로 묵직한 바디감과 기분 좋은 산미의 폴 바셋 대표 블렌드입니다. 언제 어디서나 따뜻한 물과 바리스타 파우치로 스페셜티 커피의 맛과 향을 쉽게 즐길 수 있습니다.','220/100/5/5/10/4/20','best','barista1.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (59,'product','Bean','콜롬비아 자이로','Colombia Jairo',22000,'포도, 자두, 밝은 과즙미, 시럽같이 풍부하고 달콤한 바디감의 콜롬비아 자이로 무릴로. 언제 어디서나 따뜻한 물과 바리스타 파우치로 스페셜티 커피의 맛과 향을 쉽게 즐길 수 있습니다. ','20/20/10/10/0/0/0','best','ba2.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (58,'beverage','yogurt','플레인 요거트','Plain Yogurt',6000,'상큼한 요거트와 바나나를 블렌딩하여 편하게 즐길 수 있는 드링킹 요거트입니다. (생바나나가 포함되어 있습니다)','360/200/24/95/7/4/0',null,'Plain Yogurt.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (64,'product','Bean','캡슐 에티오피아 ',' Capsule Ethiopia',18000,'폴 바셋이 엄선한 스페셜티 등급의 원두로 만든 커피 캡슐 (네스프레소 머신 호환 가능)
','0/0/0/0/0/0/30','new','pn6.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (67,'product','Bean','익스피리언스팩','Experience Pack',14000,' 시그니처 블렌드, 에티오피아 구지 G1, 콜롬비아 자이로 무릴로. 언제 어디서나 따뜻한 물과 바리스타 파우치로 스페셜티 커피의 맛과 향을 쉽게 즐길 수 있습니다.
','0/0/0/0/0/0/10','new','bn3.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (68,'beverage','tea','Blueberry Sikhye','블루베리 식혜',4500,'상하농원 블루베리를 담아 더욱 달콤한 식혜 음료 입니다.','360/190/43/0/1/0/0','new','Blueberry Sikhye.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (73,'product','Tumbler','아이스 텀블러',' Ice Tumbler',18000,'아이스 음료 전용 텀블러 입니다. 이중구조로 결로현상 방지에 탁월하며 스트로우 포함 구성으로 간편하게 사용 가능합니다. ','0/0/0/0/0/0/0',null,'tumble1.PNG');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (74,'product','Tumbler','리유저블 텀블러','Reusable Tumbler ',32000,'가볍고 편리하게 사용 가능한 리유저블 텀블러입니다. 환경보호의 작은 실천과 사무실에서도 텀블러를 이용해보세요. 따뜻한 음료도 사용 가능한 재질로 사계절 유용하게 사용할 수 있습니다.','0/0/0/0/0/0/0','best','retumble.png');
Insert into MENU (P_NUM,M_CODE,S_CODE,P_NAME,P_ENAME,P_PRICE,P_DESC,P_INFO,NEW_BEST,P_IMG) values (76,'product','Tumbler','리유저블 텀블러','Reusable Tumbler',32000,'가볍고 편리하게 사용 가능한 리유저블 텀블러입니다. 환경보호의 작은 실천과 사무실에서도 텀블러를 이용해보세요. 따뜻한 음료도 사용 가능한 재질로 사계절 유용하게 사용할 수 있습니다.','0/0/0/0/0/0/0',null,'g.png');
--------------------------------------------------------
--  DDL for Index PK_MENU
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MENU" ON "MENU" ("P_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "MENU" MODIFY ("P_NUM" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("M_CODE" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("S_CODE" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("P_NAME" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("P_ENAME" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("P_PRICE" NOT NULL ENABLE);
  ALTER TABLE "MENU" MODIFY ("P_DESC" NOT NULL ENABLE);
  ALTER TABLE "MENU" ADD CONSTRAINT "PK_MENU" PRIMARY KEY ("P_NUM")
  USING INDEX  ENABLE;
