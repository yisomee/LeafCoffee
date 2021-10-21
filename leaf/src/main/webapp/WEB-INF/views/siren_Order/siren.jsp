<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- iamport.payment.js -->
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJSzwXGvvtIypU1a6qlp-Vw0hY-4ZQ_I0&callback=initMap"></script>

<style>
	a:link, a:hover, a:visited {text-decoration:none;color:black;}
	ul, li {margin:0;padding:0;list-style-type:none;}
	#totalCon{width:1300px;margin:0 auto}
	#mapCon{display:flex;}
	
	/*section2*/
	.menu_title_container{display:flex;justify-content:space-evenly;border-bottom:1px solid gray;font-size:1.2rem}/*메뉴탑*/
	.menu_title_container>li:hover{border-bottom:3px solid rgb(0, 163, 239);cursor:pointer}
	.menu_title_container>li{padding:15px}
	#menuCon{display:flex;align-items:center}
	.menu{width:40%}
	#menuList{width:60%}
	#menuSelect{font-size:1.8rem;padding:20px 0 20px 15px}
	#selMenuList{display:flex;flex-direction:column;align-items:center}
	#selMenuList>li{padding:10px 0}
	#totalPrice{margin-left:200px}
	#menuCntBtn>input[type='button']{width:50px;}
	#menuCnt,#shotCnt,#syrupNum{padding:0 20px}
	#shotPrice{padding:0 38px}
	#syrupPrice{padding:0 32px}
	#shotPlus,#shotMinus,#syrupPlus,#syrupMinus{width:50px}
	/*메뉴리스트*/
	.clicked{background-color:rgb(0, 163, 239) !important;color:white !important}
	.imgwrap{width:110px;height:110px;display:flex;justify-content:center;border-radius: 100%;margin:30px;}
	.imgwrap:hover{border:3px solid rgb(0, 163, 239)}
	#img{width:110px;height:110px;border-radius:100%;}
	.menuList{display:flex;justify-content:center;flex-wrap:wrap;margin-top:50px;}
	.menuList>li{display:flex;flex-direction:column;align-items:center;}
	.imgtext{text-align:center;}
	.menuname{margin-left:80px;}
	.menuname>li{padding:7px 0}
	.p_ename {font-size:0.8em;color: rgb(0, 163, 239)}
	.p_price, .p_num, .s_code, .selecPnum, .seleccartPnum{display:none}
	#shotPrice, #syrupPrice{visibility: hidden;}
	#img:hover {
		cursor: pointer;
		transform: scale(1.2); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
		-o-transform: scale(1.2);
		-moz-transform: scale(1.2);
		-webkit-transform: scale(1.2);
		transition: transform .35s;
		-o-transition: transform .35s;
		-moz-transition: transform .35s;
		-webkit-transition: transform .35s;
		transition: all 0.3s ease-in-out;
	}
	#img:not(:hover) {
		cursor: pointer;
		transform: scale(1); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
		-o-transform: scale(1);
		-moz-transform: scale(1);
		-webkit-transform: scale(1);
		transition: transform .35s;
		-o-transition: transform .35s;
		-moz-transition: transform .35s;
		-webkit-transition: transform .35s;
		transition: all 0.3s ease-in-out;
	}		
	#menuDetail{font-size:1.8em;padding:0 0 50px 106px;}			
	.searchstore {background: rgb(0, 163, 239);font-size: 1.5rem;color: white;text-align: center;padding-top: 10px;}	
	#searched>li {height: 80px;padding: 5px;border-bottom: 1px solid #ddd;}	
	input[type="button"]{width:190px;font-size:1.1rem;height:40px;border:1px solid rgb(0, 163, 239);border-radius:5px;color:rgb(0, 163, 239);background:white;}	
	.store li {width:550px;height:20px;}	
	#cart{font-size:1.8em;padding:40px 0}
	.cartName{margin-left:10px;font-size:1.1rem}
	.option{font-size:0.8rem}
	.cartMenu{display:flex;justify-content:space-between}
	.cartList{background-color:#F5F0E9;width:80%;margin:0 auto;border-radius:4%;padding:30px;}
	.price{text-align:right;font-size:1.1em;font-weight:600;}
	#cartPrice{width:80%;text-align:end;font-size:1.7rem;margin:0 auto;font-weight:bold;color:red;padding:20px}
	#payBtn{text-align:center;margin:50px 0}
	#addMenu>ul{margin:20px 0}
/*	#mapList {position: absolute;left: 1%;top: 11%;background: white;border-radius:3%;width:300px;height:300px;opacity:0.8;}	
	.detail{position: relative;left: 65%;top: 15%;height: 645px;}*/
	
</style>

<script>
	//totalPrice에 쓰인 변수
	let selectPrice;
	let shotPrice = 0;
	let syrupPrice = 0;
	
	//메뉴 상세 가격란에 들어갈 가격변수
	let price;
	
	//선택 된 옵션 val 담는 변수
	let cup;
	let size;
	let hot_ice;
	$(function() {
		//메뉴상단바에서 종류 선택 시
		$("#All").click(function() {
			$(".coffee").css('display', 'block');
			$(".beverage").css('display', 'block');
			$(".food").css('display', 'block');
		});
		$("#Coffee").click(function() {
			$(".coffee").css('display', 'block');
			$(".beverage").css('display', 'none');
			$(".food").css('display', 'none');
		});
		$("#Beverage").click(function() {
			$(".beverage").css('display', 'block');
			$(".coffee").css('display', 'none');
			$(".food").css('display', 'none');
		});
		$("#Food").click(function() {
			$(".food").css('display', 'block');
			$(".coffee").css('display', 'none');
			$(".beverage").css('display', 'none');
		});
		
		//옵션 선택값 초기화
		function menuInit(){			
		   for (var i = 0; i < selectCup.length; i++) {
           	selectCup[i].classList.remove("clicked");
           }
		   for (var i = 0; i < selectCup.length; i++) {
       	    selectSize[i].classList.remove("clicked");
           }
	       for (var i = 0; i < selectHI.length; i++) {
           	selectHI[i].classList.remove("clicked");
           }
			$("#menuCnt").html(1);
			$("#shotCnt").html(0);
			$("#shotPrice").html(0);
			$("#syrupNum").html(0);
			$("#syrupPrice").html(0);
			$("#shotPrice").css('visibility','hidden');
			$("#syrupPrice").css('visibility','hidden');
		}
		
		//메뉴 선택 시 상세 메뉴에 띄워주기/이전 선택값 초기화
		$(".siren___menu").click(function() {
			menuInit();
			$("#selectName").html($(this).children(".imgtext").children(".p_name").text());
			$("#selectEname").html($(this).children(".imgtext").children(".p_ename").text());
			$("#selectPrice").html($(this).children(".imgtext").children(".p_price").text()+"원");
			$("#totalPrice").html($(this).children(".imgtext").children(".p_price").text()+"원");
			$(".selecPnum").html($(this).children(".imgtext").children(".p_num").text())
			price = $(this).children(".imgtext").children(".p_price").text();
		});		
		
		//음료추가
		$("#menuPlus").click(function(){
			$("#menuCnt").html(parseInt($("#menuCnt").text())+1);
			$("#selectPrice").html(parseInt($("#selectPrice").text())+parseInt(price));
			selectPrice = $("#selectPrice").text();
			$("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		$("#menuMinus").click(function(){
			if(parseInt($("#menuCnt").text())>1){
				$("#menuCnt").html(parseInt($("#menuCnt").text())-1);
				$("#selectPrice").html(parseInt($("#selectPrice").text())-parseInt(price));		
			}
			selectPrice = $("#selectPrice").text();
			$("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		
		//컵/사이즈/핫/아이스 옵션 버튼클릭 이벤트
		var selectCup = document.getElementsByClassName("selectCup");
		var selectSize = document.getElementsByClassName("selectSize");
		var selectHI = document.getElementsByClassName("selectHI");
		
        function handleClick(event) {
            console.log(event.target.value);
            cup = event.target.value;
             // console.log(this); // 콘솔창을 보면 둘다 동일한 값이 나온다
            console.log(event.target.classList);
            if (event.target.classList[1] === "clicked") {
                event.target.classList.remove("clicked");
            }else {
	            for (var i = 0; i < selectCup.length; i++) {
	                selectCup[i].classList.remove("clicked");
	            }
            event.target.classList.add("clicked");
            }
        }
        function handleClick2(event) {
        	size = event.target.value;
        	if (event.target.classList[1] === "clicked") {
            	event.target.classList.remove("clicked");
            }else {
            for (var i = 0; i < selectCup.length; i++) {
        	    selectSize[i].classList.remove("clicked");
            }
            event.target.classList.add("clicked");
            }
	    }
        function handleClick3(event) {
        	hot_ice = event.target.value;
        	if (event.target.classList[1] === "clicked") {
               event.target.classList.remove("clicked");
            }else {
            for (var i = 0; i < selectHI.length; i++) {
            	selectHI[i].classList.remove("clicked");
            }

            event.target.classList.add("clicked");
            }
        }
	    function init() {
	    	for (var i = 0; i < selectCup.length; i++) {
	    	   selectCup[i].addEventListener("click", handleClick);	    	   
	        }
	    	for (var i = 0; i < selectSize.length; i++) {
	    		selectSize[i].addEventListener("click", handleClick2);	    	   
		    }
	    	for (var i = 0; i < selectHI.length; i++) {
	    		selectHI[i].addEventListener("click", handleClick3);	    	   
		    }
	    }
	    init();//버튼 클릭 이벤트 호출
		
		//샷추가
		const shot = 500;
		$("#shotPlus").click(function(){
			$("#shotCnt").html(parseInt($("#shotCnt").text())+1);
			$("#shotPrice").html(parseInt($("#shotPrice").text())+shot);
			if(parseInt($("#shotCnt").text())>0){
				$("#shotPrice").css('visibility','visible');
			}
			shotPrice = $("#shotPrice").text();	
			$("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		$("#shotMinus").click(function(){
			if(parseInt($("#shotCnt").text())>0 && parseInt($("#shotPrice").text())>0){
				$("#shotCnt").html(parseInt($("#shotCnt").text())-1);
				$("#shotPrice").html(parseInt($("#shotPrice").text())-shot);
			}
			if(parseInt($("#shotCnt").text())<1){
				$("#shotPrice").css('visibility','hidden');
			}
			shotPrice = $("#shotPrice").text();	
			$("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		
		//시럽 +,-/시럽은 몇번을 추가해도 500원 
		$("#syrupPlus").click(function(){
			 $("#syrupNum").html(parseInt($("#syrupNum").text())+1);
			 $("#syrupPrice").html(500);	
			 if(parseInt($("#syrupNum").text())>0){
				 $("#syrupPrice").css('visibility','visible');
			 }
			 syrupPrice = $("#syrupPrice").text();
			 $("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		$("#syrupMinus").click(function(){
			if(parseInt($("#syrupNum").text())>0){
				$("#syrupNum").html(parseInt($("#syrupNum").text())-1);
			}
			if(parseInt($("#syrupNum").text())<1){
				$("#syrupPrice").html(0);
				$("#syrupPrice").css('visibility','hidden');
			}
			syrupPrice = $("#syrupPrice").text();
			$("#totalPrice").html(parseInt(selectPrice)+parseInt(shotPrice)+parseInt(syrupPrice));
		});
		
		//장바구니 담기 버튼 클릭시
		$("#addCartBtn").click(function(){
			if(cup != null && size != null && hot_ice != null){
				var cartMenu = "<ul class='cartMenu'>";
					cartMenu += "<li><input type='checkbox'><span class='cartName'>"+ $("#selectName").text() +"</span><br/><span class='option'>"+cup+"/"+size+"/"+hot_ice;
					if(parseInt($("#shotCnt").text())>0){
						cartMenu += "/샷추가"+$("#shotCnt").text()+"회(+"+$("#shotPrice").text()+")";
					}
					if(parseInt($("#syrupNum").text())>0){
						cartMenu += "/시럽추가"+$("#syrupNum").text()+"회(+"+500+")";
					}
					cartMenu += "</span></li>";
					cartMenu += "<li>"+$("#menuCnt").text()+"</li>";
					cartMenu += "<li class='price'>"+$("#totalPrice").text()+"</li>";
					cartMenu += "<li class='seleccartPnum'>"+$(".selecPnum").text()+"</li></ul>";
					console.log($(".selecPnum").text());
				$("#addMenu").append(cartMenu);			
				menuInit();
			}else if(cup==null){
				alert("컵을 선택해주세요.");
			}else if(size==null){
				alert("사이즈를 선택해주세요.");
			}else if(hot_ice==null){
				alert("HOT/ICE를 선택해주세요.");
			}
		});

	});
</script>
<!-- 지도 api -->
<!--<script>
	// https://cloud.google.com/maps-platform/
	// https://maps.googlepis.com/
	//위도, 경도
	var latitude = 37.5729503;
	var longitude = 126.9793578;

	function initMap() {
		var myCenter = new google.maps.LatLng(latitude, longitude);
		// 지도를 그릴 때 필요한  기타점을 JSON형식의 데이터로 생성한다.							
		var mapProperty = {
			center : myCenter,
			zoom : 17,//0~21까지의 값을 사용한다. 숫자가 클수록 확대된다.
			mapTypeId : google.maps.MapTypeId.ROADMAP
		//지도종류(ROADMAP, HYBRID, STEELITE, TERRAIN)
		};
		//지도를 표시할 곳	
		var map = new google.maps.Map(document.getElementById("map"),
				mapProperty);

	}	
</script>-->
</head>
<body>
<%@ include file="/inc/top.jspf" %>
<div id="totalCon">
	<section class="section1">
		<div id="store">매장 선택</div>
		<div id="mapCon">
			<div id="map" class="list"></div>
			<div id='mapList'>
				<ul>
					<li class="searchstore">매장찾기</li>
					<li class="searchstore"><input type="text"
						placeholder="매장명 또는 주소"></li>
					<li>
						<ul id="searched">
							<li>무교로<br /> 서울특별시 중구 무교로 15(무교동)<br /> 1522-3232
							</li>
							<li>한국 프레스 센터<br />서울특별시 중구 세종대로 124(태평로1가)<br />1522-3232
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<ul class="detail store">
				<li style="height: 369px"><img
					src="img/15066662951506666295_kospi007.jpg"></li>
				<li>문정하비오점</li>
				<li>서울시 송파구 송파대로 111(문정동 23-2)</li>
				<li>-사이렌 오더 운영시간 : 07:00 ~ 21:30</li>
				<li>-결제 및 주문은 매장 2km 이내에서 가능합니다.</li>
			</ul>
		</div>
	</section>
	<section class="section2">
	<div id="menuSelect">메뉴 선택</div>
	<div id="menuCon">
		<div id="menuList">
			<ul class="menu_title_container">
				<li id="All">All</li>
				<li id="Coffee">Coffee</li>
				<li id="Beverage">Beverage</li>
				<li id="Food">Food</li>
			</ul>		
			<ul class="menuList">
				<c:forEach var="menuVo" items="${menuVo}">
				<li class="siren___menu ${menuVo.s_code}">
					<div class="imgwrap">
						<img src="img/americano.png" id="img"/>
					</div>
					<div class="imgtext">
						<div class="p_name">${menuVo.p_name}</div>
						<div class="p_ename">${menuVo.p_ename}</div>
						<div class="p_price">${menuVo.p_price}</div>
						<div class="s_code">${menuVo.s_code}</div>
						<div class="p_num">${menuVo.p_num }</div>
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		<div class="detail menu">
			<div id="menuDetail">메뉴 상세</div>
			<ul id="selMenuList">
				<li style="display:flex;">
					<img src="img/americano.png" id="img"style="width: 150px; height: 150px;" /> 
					<ul class="menuname">
						<li id="selectName">아메리카노</li>
						<li id="selectEname" class="p_ename">Americano</li>
						<li id="selectPrice">4,300원</li>
						<li class="selecPnum"></li>
						<li id="menuCntBtn">
							<input id="menuMinus" class="cntBtn" type="button" value="-"> 
							<span id="menuCnt"> 1 </span> <input id="menuPlus" class="cntBtn" type="button" value="+">
						</li>
					</ul>
				</li>
				<li id="cup">
					<input type="button" value="일회용컵" class="selectCup">
					<input type="button" value="매장컵" class="selectCup">
				</li>
				<li id="size">
					<input type="button" value="TALL" class="selectSize">
					<input type="button" value="GRANDE" class="selectSize">
				</li>
				<li id="hot_ice">
					<input type="button" value="HOT" class="selectHI">
					<input type="button" value="ICE" class="selectHI">
				</li>
				<li>
					샷추가 
					<span id="shotPrice">0</span>
					<input id="shotMinus" class="cntBtn" type="button" value="-"> 
					<span id="shotCnt"> 0 </span>
					<input id="shotPlus" class="cntBtn" type="button" value="+">
				</li>
				<li>
					시럽추가 
					<span id="syrupPrice">0</span>
					<input id="syrupMinus" class="cntBtn" type="button" value="-"> 
					<span id="syrupNum"> 0 </span>
					<input id="syrupPlus" class="cntBtn" type="button" value="+">
				</li>
				<li id="totalPrice">4300원</li>
				<li>
					<input type="button" value="장바구니 담기" id="addCartBtn">
					<input type="button" value="주문하기" id="orderBtn">
				</li>
			</ul>
		</div>
	</div>
	</section>
	<section class="section3">
	<div id="cart">장바구니</div>
	<form>
		<ul class="cartList">
			<li><input type="checkbox"><span>상품명</span><span>수량</span><span>금액</span></li>
			<hr/>					
			<li id="addMenu">
				<ul class="cartMenu">
					<li><input type="checkbox"><span class="cartName">아메리카노</span><br/><span class="option">ICE/Tall/매장컵</span></li>
					<li id="cartCnt">1</li>
					<li class="price">4,300원</li>
					<li class="seleccartPnum"></li>
				</ul>
			</li>
			<li><hr/></li>
		</ul>					
		<div id="cartPrice">총 8,500원</div>
		<div id="payBtn"><input type="button" value="주문결제하기"/></div>
	</form>
	</section>
</div>
<script>
    $('#orderBtn').click(function () {

        var IMP = window.IMP;
        IMP.init('imp54411040');
        var money = $('#totalPrice').text();
        var userName = '${regVo.username}';
        
        var userid =  '${regVo.userid}';
        var p_num = $('.selecPnum').text();
        var od_cnt = $('#menuCnt').text();
        var selectName = $('#selectName').text();
        
        IMP.request_pay({
            pg: 'pg',
            pay_method:'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: selectName,
            amount: money,
            buyer_name: userName,
            
            buyer_postcode:'113-343',
            
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                $.ajax({
                    type: "GET",
                    url: "/leaf/myapp/order", //충전 금액값을 보낼 url 설정
                    data: {
                        "od_price": money,   
                        "p_num": p_num,
                        "od_cnt": od_cnt,
                        "fc_num": 1,
                        "userid": userid                  
                    },
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
  //          document.location.href = history.back(); //alert창 확인 후 이동할 url 설정
        });
    });
</script>
</body>
</html>