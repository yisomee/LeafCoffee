<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
body {
	background-color: rgb(243, 244, 248);
}

.main {
	max-width: 1400px;
	margin: 0 auto;
	overflow: auto;
	height: 1500px;
}

.search {
	width: 400px;
	float: left;
	margin-left: 10px;
	margin-right: 10px;
	overflow: auto;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 5px;
	height: 955px;
	background-color: rgb(249, 247, 244);
	cursor: pointer;
}

.partner {
	margin-right: 10px;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 5px;
	background-color: rgb(249, 247, 244);
	display: flex;
}

.purchase {
	width: 1061px;
	display: flex;
	margin: 10px;
	flex-direction: column;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 5px;
	background-color: rgb(249, 247, 244);
}

.store {
	width: 310px;
	display: flex;
	margin: 10px;
	margin-left: 0;
	flex-direction: column;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 5px;
	background-color: rgb(249, 247, 244);
	padding: 14px;
}

.purchase_ok {
	width: 965px;
	height: 300px;
	display: flex;
	margin: 10px;
	box-shadow: 0px 1px 2px 1px lightslategrey;
	border-radius: 5px;
	overflow: auto;
	background-color: rgb(249, 247, 244);
}

.text {
	width: 100px;
}

table, td {
	padding-top: 0px;
	padding-bottom: 0px;
	height: 0px;
}

.table td, .table th {
	padding: .25rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
	text-align: center;
	
}

.name, #name2 {
	font-size: 1.2em;
	font-weight: bold;
	margin: 10px;
}

.name {
	float: left;
	color: rgb(30, 57, 50);
	text-align: center;
}

#name2 {
	margin-left: 424px;
}
.manename{
	font-size:2em;
	color: rgb(30, 57, 50);
	font-weight: bold;
}

#pc_cnt {
	width: 100px;
	display: inline-block;
	height: 30px;
	background-color: rgb(249, 247, 244);
}

#delBtn {
	background-color: rgb(210, 205, 200);
	border-radius: 5px;
	font-size: 0.6em;
	font-size: 1em;
	width: 120px;
	color: white;
	display: flex;
	justify-content: space-evenly;
	height: 35px;
	margin: 10px;
	margin-left: 820px;
	transition: 0.4s;
}

#delBtn:hover, .btn3:hover {
	cursor: pointer;
	box-shadow: inset 30em 0 0 0 rgb(102, 97, 93);
	color: white;
	border-color: rgb(102, 97, 93);
}

.btn3 {
	font-size: 0.6em;
	position: relative;
	font-size: 1em;
	height: 35px;
	border: none;
	background-color: rgb(210, 205, 200);
	width: 120px;
	color: white;
	display: flex;
	justify-content: space-evenly;
	transition: 0.4s;
	border-radius: 5px;
	left: 150px;
}

}
.product {
	cursor: pointer;
}
/*head 이미지*/
header {
	height: 250px;
	position: relative;
}

#headerText {
	top: -100px;
	font-size: 3em;
	color: white;
	opacity: 0.5;
	text-align: center;
	position: relative;
}

nav {
	display: flex;
	justify-content: center;
	width: 100%;
	border-bottom: 1px solid gray;
}

nav>div {
	padding: 15px 40px;
}

#head_img {
	background-image:
		url(https://www.baristapaulbassett.co.kr/images/whatsnew/eventSubVisual.jpg);
	z-index: -1;
	width: 100%;
	height: 250px;
}

.items {
	display: flex;
	justify-content: space-evenly;
	line-height: 2;
	margin: 8px;
}

input {
	border: none;
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	border-bottom: 1px solid;
	outline: none;
	background-color: rgb(236, 236, 236);
}

.searchPartner {
	width: 420px;
}

.form {
	display: flow-root;
}

#span {
	font-size: 0.6em;
	margin: 3px;
}

.fa-envira {
	color: rgb(30, 57, 50);
}

.textarea {width =200px;height =70px;
	border: 2px solid;
	font-weight: bold;
	font-size: 0.8em;
	margin: 10px;
	padding: 10px;
	margin-bottom: 30px;
	resize: none;
	top: -20px;
	position: relative;
	left: 70px;
}

.franchise {
	line-height: 2;
}
.franchise>ul{
	display:flex;
	justify-content: flex-start;
	margin-left:10px;
}
.franchise li:nth-of-type(1){
	width:130px;
}
</style>


<script>


$(document).ready(function() {

    $('.form').submit(function() {
    	
        console.log(document.getElementById('status').innerText);
        if(document.getElementById('status').innerText == "대기"){
        	alert('발주취소성공');
            return true;
        }
        alert('발주취소실패');
        return false;
        });
});

</script>
<script>
var hq_num=0;
$(()=>{
	$('#myinput').keyup(function(){
		var data = $(this).val().toLowerCase();
		
		$('#searchList>tr').filter(function(){
			var trData = $(this).text().toLowerCase(); //tr에 있는 문자를 구한다.
			var idx = trData.indexOf(data);// 없을때 -1, 있을때 0~정수
			//				true:그냥둠, false:숨겨
			$(this).toggle(idx>-1);
		});
	});

	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
	
	
});

//서버에서 List컬렉션 객체 비동기식으로 가져오기 ajax (상품정보->거래처정보, 발주)
$(()=>{
	
	    $(".product").on('click',function(){
	      var url = "/myapp/purchasePartner";
	      var hq_num = $(this).children(".first").text();
	      var params = {"hq_num": hq_num};
	      $.ajax({
	         url:url,
	         data:params,
	         success:function(r){
	        	 var rr = $(r)
	        	 var tag = "";
	            rr.each(function(idx,vo){
	            	   $("#view7").html(vo.hq_num );
	  		           $("#view8").html(vo.hq_name);
	  		           $("#view9").html(vo.ware_price + 2000);
	  	               $("#view1").html(vo.part_company);
	  	               $("#view2").html(vo.part_code_name);
	  	               $("#view4").html(vo.part_name);
	  	               $("#view5").html(vo.part_tel);
	  	               $("#view6").html(vo.part_email);
	  	               
	  	               tag = "<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>";
	  	               tag += "<div>" + vo.hq_num + "</div>"
	  	               tag += "<div>" + vo.hq_name + "</div>"
	  	               tag += "<div>" + (vo.ware_price + 2000) + "원</div>"
	  	               tag += "<input type='text' name='pc_cnt' id='pc_cnt' required/>개"
	  	               tag += "<div><input id='hq_num' name='hq_num' value='"+ vo.hq_num  +"' type='hidden' /></div>"
	  	               tag += "<div><input type='submit' class='btn3' value='발주' /></div></form>";
	  	               $("#purchase").html(tag);
	  	            });    		           
	         }
	      }); // ajax
	   });// 클릭
	});	
</script>

</head>
<body>
<header>
	<div id="head_img"></div>
   <div id="headerText">PURCHASE</div>
</header>
<div class="main">
<div class="manename">발주관리</div>
<hr/>
<div style="display:flex";>
<div class="purchase">
<div class="name">발 주 서<hr/></div>

   	   	<div class="items">
   	   	<div>
   	   		<div><b><i class="fab fa-envira"></i> 상품번호 </b></div>
   	   		<div><b><i class="fab fa-envira"></i> 제 품 명 </b></div>
   	   		<div><b><i class="fab fa-envira"></i> 발주가격 </b></div>
   	   		<div><b><i class="fab fa-envira"></i> 발주수량 </b></div>
   	   		
   	   	</div>
   	   	<div id="purchase">
   	   	<form id='frm' method='post' action='/myapp/Purchase_RegisterOk'>
	    <div>12</div>
	    <div>원두</div>
	    <div>5000원</div>
	    <input type="text" name='pc_cnt' id='pc_cnt'/>개
	    
	    
		   
	    <div><input type='submit' class='btn3' value='발주' /></div></form>
   	   	</div>
   	   	<div class="textarea">
	    	● 본사 담당자가 발주를 확인 한 후 처리완료 될 예정입니다.<br/> 
	    	● 발주상태가 완료되면 취소가 불가합니다.<br/>
	    	● 발주상태가 대기중에는 취소가 가능합니다.
	    </div>
   	   	</div>   	
	</div>
	 <div class="store">
		<div class='name'>발 주 처</div>
   	   	<div class='franchise'>
			<c:forEach var="ProductVO" items="${purchaseList}" varStatus="status" begin="1" end="1">
			<hr/>			
			<ul>
				<li><b>가맹점명</b></li>
				<li id="">${ProductVO.fc_name }</li>
			</ul>
			<ul>
				<li><b>담당자</b></li>
				<li id="">${ProductVO.fc_boss }</li>
			</ul>
			<ul>
				<li><b>연락처</b></li>
				<li id="">${ProductVO.fc_tel }</li>
			</ul>
			</c:forEach>
		</div> 
		</div>
		</div>	
	<div class="name">품목</div> <div id="name2">정보</div>
				<hr/>
	<div class="search">
		<input type='text' id='myinput' placeholder='원하시는 상품을 검색하세요.' class='form-control'/>
		<table class='table table-hover'>
			<thead>
			<tr class="table-active">
				<td>상품번호</td>
				<td>제품명</td>
			</tr>
			</thead>
			<tbody id='searchList'>	
				<c:forEach var="ProductVO" items="${ProductList}">
					<tr class="product">
						<td class="first">${ProductVO.hq_num}</td>
						<td>${ProductVO.hq_name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="partner">
			<table class='table'>
			<tr>
				<td><div class='name'>품 목</div></td>
			</tr>
			<tr>
				<td><b>상품번호</b></td>
				<td id="view7"></td>
			</tr>
			<tr>
				<td><b>제품명</b></td>
				<td id="view8"></td>
			</tr>
			<tr>
				<td><b>발주가격</b></td>
				<td id="view9"></td>
			</tr>
			</table>
			<table class='table'>
			<tr>
				<td><div class='name'>품목정보</div></td>
			</tr>
			<tr>
				<td><b>제조원</b></td>
				<td id="view1"></td>
			</tr>
			<tr>
				<td><b>분류</b></td>
				<td id="view2"></td>
			</tr>
			<tr>
				<td><b>담당자</b></td>
				<td id="view4"></td>
			</tr>
			<tr>
				<td><b>연락처</b></td>
				<td id="view5"></td>
			</tr>
			<tr>
				<td><b>이메일</b></td>
				<td id="view6"></td>
			</tr>
		
		</table>
	</div>
	<form method="post" class="form" name="delsubmit" action="/myapp/purchaseDel">
	<div class="name">요청내역</div>
		<input type="submit" id="delBtn" value="발주취소">
		<div class="purchase_ok">
			 <table class="table table-hover">
			  
	      	<thead>
	            <tr class="table-active">
	            	<td>선택</td>
	            	<td>발주번호</td>
	                <td>상품번호</td>
	                <td>제품명</td>
	                <td>발주가격</td>
	                <td>발주수량</td>
	                <td>합계금액</td>
	                <td>발주날짜</td>
	                <td>발주상태</td>
	            </tr>
	            </thead>
	           
	            <tbody>
	            	<c:forEach var="ProductVO" items="${purchaseList}">
	            	<c:if test="${ProductVO.order_status == 1}">
		             <tr>
		             	<td><input type="checkbox" id="purchaseDel" name="purchaseDel" value="${ProductVO.pc_num }"/></td>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price + 2000}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${(ProductVO.ware_price + 2000)*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td id="status" name="status"><c:if test="${ProductVO.order_status == 1}">대기</c:if>
		               	    <c:if test="${ProductVO.order_status == 2}">완료</c:if>
		               	</td>
		            </tr>
		            </c:if>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
		<div class="name">완료내역</div>
		<div class="purchase_ok">
			 <table class="table table-hover">
	      	<thead>
	            <tr class="table-active">
	            	<td>발주번호</td>
	                <td>상품번호</td>
	                <td>제품명</td>
	                <td>발주가격</td>
	                <td>발주수량</td>
	                <td>합계금액</td>
	                <td>발주날짜</td>
	                <td>발주상태</td>
	            </tr>
	            </thead>
	           
	            <tbody>
	            	<c:forEach var="ProductVO" items="${purchaseList}">
	            	<c:if test="${ProductVO.order_status == 2}">
		             <tr>
		             	<td>${ProductVO.pc_num}</td>
		               	<td>${ProductVO.hq_num}</td>
		                <td>${ProductVO.hq_name}</td>
		                <td>${ProductVO.ware_price + 2000}</td>
		                <td>${ProductVO.pc_cnt}</td>
		                <td>${(ProductVO.ware_price + 2000)*ProductVO.pc_cnt}</td>
	               	    <td>${ProductVO.pc_date}</td>
	               	    <td><c:if test="${ProductVO.order_status == 1}">대기</c:if>
		               	    <c:if test="${ProductVO.order_status == 2}">완료</c:if>
		               	</td>
		            </tr>
		            </c:if>
		            </c:forEach>
	         </tbody>
	      </table>
		</div>
	</form>
</div>
<%@ include file="/inc/bottom.jspf" %>