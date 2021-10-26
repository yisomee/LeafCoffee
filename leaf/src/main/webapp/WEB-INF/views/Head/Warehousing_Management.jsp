<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/adminTop.jspf" %>

<style>
	.container{
      max-width: 1480px;
      height:1200px;
   }
   .table-active{
		color:white;
	}
   .purchase_ok{
      width: 100%;
      height:1000px;
      display:flex;
      margin-left:10px; 
      margin-top:5px;
      overflow:auto;
   }

   table,td,tr{
      padding-top: 0px;
       padding-bottom: 0px;
       height: 0px;
       text-align:center;
   }

   #myinput{
      width: 300px;
      margin: 10px;
      float: left;
   }

	/*head 이미지*/
	header {
		height: 270px;
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
			url(http://localhost:9090/myapp/img/managerbannerimg.jpg);
		z-index: -1;
		width: 100%;
		height: 270px;
	}
	.table {
	border-bottom: 2px solid rgb(0, 163, 239);
}
	#name {
	font-size: 2em;
	font-weight: bold;
	text-align: center;
	line-height: 3;
}
#name2 {
	text-align: center;
}
</style>
<script>
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

</script>
</head>
<body>
<header>
	<div id="head_img"></div>
	<div id="headerText">WAREHOUSING</div>
</header>
<div class="container">
<div id="name">입고관리</div>
<div id="name2">입고된 목록을 확인할 수 있습니다.</div><hr/>
   <div class="search"><br/>
      <input type='text' id='myinput' placeholder='입고목록을 검색하세요' class='form-control'/>
      <div class="purchase_ok">
          <table class="table table-hover">
            <thead>
               <tr class="table">
                  <td>번호</td>
                  <td>업체분류</td>
                  <td>제품명</td>
                   <td>입고가격</td>
                   <td>입고수량</td>
                   <td>거래처명</td>
                   <td>담당자</td>
                   <td>거래처번호</td>
                   <td>연락처</td>
                   <td>입고날짜</td>
               </tr>
               </thead>
               <tbody id='searchList'>   
                  <c:forEach var="ProductVO" items="${WarehousingList}">
				  	<tr>
                      <td>${ProductVO.ware_num }</td>
                      <td>${ProductVO.part_code_name }</td>
                      <td>${ProductVO.hq_name}</td>
                      <td>${ProductVO.ware_price}</td>
                      <td>${ProductVO.ware_cnt}</td>
                      <td>${ProductVO.part_company}</td>
                      <td>${ProductVO.part_name}</td>
                      <td>${ProductVO.part_tel}</td>
                      <td>${ProductVO.part_email}</td>
                      <td>${ProductVO.ware_date}</td>
                  	</tr>
				  </c:forEach>
            </tbody>
         </table>
      </div>
   </div>
</div>
<%@ include file="/inc/bottom.jspf" %>