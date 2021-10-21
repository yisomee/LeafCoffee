<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/adminTop.jspf" %>

<style>
   .container{
      background-color: rgb(245, 240, 233);
      max-width: 1480px;
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
	
	#register{
			height: 40px;
	    border: none;
	    background-color: rgb(210, 205, 200);
	    width: 150px;
	    color: white;
	    margin-left: 1250px;
	    display: flex;
	  	justify-content: space-evenly;
	}
	.table-active{
		color:white;
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
	<div id="headerText">재고관리</div>
</header>
<div class="container">
   <div class="search"><br/>
      <input type='text' id='myinput' placeholder='재고상품을 검색하세요' class='form-control'/>
      <input type="button" id="register" value="제품등록하기" onClick="location.href='items_Register'">
      <div class="purchase_ok">
          <table class="table table-hover">
            <thead>
               <tr class="table-active">
                  <td>상품번호</td>
                  <td>제품명</td>
                  <td>가격</td>
                   <td>재고수량</td>
                   <td>거래처명</td>
                   <td>거래처번호</td>
               </tr>
               </thead>
               <tbody id='searchList'>   
                  <c:forEach var="ProductVO" items="${inventory}">
				  	<tr>
                      <td>${ProductVO.hq_num }</td>
                      <td>${ProductVO.hq_name }</td>
                      <td>${ProductVO.ware_price}</td>
                      <td>${ProductVO.inventory }</td>
                      <td>${ProductVO.part_company}</td>
                      <td>${ProductVO.part_tel}</td>
                  	</tr>
				  </c:forEach>
            </tbody>
         </table>
      </div>
   </div>
</div>