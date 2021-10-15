<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/adminTop.jspf" %>

<style>
   .container{
      background-color: rgb(245, 240, 233);
      max-width: 1400px;
      height:855px;
   }
   .purchase_ok{
      width: 100%;
      height:500px;
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
   }

	input[type=button]{
		background-color:white;
		width: 100px;
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.3em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		
	}
	
	.btnclass{
		
    display: flex;
    justify-content: center;
	}
	
	.ok{
		
		margin: 20px 20px 0 0;
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
	<div id="headerText">Warehousing List</div>
</header>
<div class="container">
   <div class="search"><br/>
      <input type='text' id='myinput' placeholder='검색하기' class='form-control'/>
      <div class="purchase_ok">
          <table class="table table-hover table-active">
            <thead>
               <tr class="table-active">
                  <td>번호</td>
                  <td>업체분류</td>
                  <td>제품명</td>
                   <td>입고가격</td>
                   <td>입고수량</td>
                   <td>거래처명</td>
                   <td>담당자</td>
                   <td>거래처번호</td>
                   <td>연락처</td>
               </tr>
               </thead>
               <tbody id='searchList'>   
                  <c:forEach var="ProductVO" items="${WarehousingList}">
				  	<tr>
                      <td>${ProductVO.hq_num }</td>
                      <td>${ProductVO.part_code_name }</td>
                      <td>${ProductVO.hq_name}</td>
                      <td>${ProductVO.ware_price}</td>
                      <td>${ProductVO.ware_cnt}</td>
                      <td>${ProductVO.part_company}</td>
                      <td>${ProductVO.part_name}</td>
                      <td>${ProductVO.part_tel}</td>
                      <td>${ProductVO.part_email}</td>
                  	</tr>
				  </c:forEach>
            </tbody>
         </table>
      </div>
   </div>
   <div class="btnclass">
   		<div class="ok"><input type="button" id="ok" value="삭제"/></div>
	</div>
</div>