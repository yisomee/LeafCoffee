<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

   .container{
     
      max-width: 1400px;
      height:855px;
   }
   .purchase_ok{
      width: 100%;
      height:400px;
      border:1px solid gray;
      display:flex;
      margin-left:10px; 
      margin-top:5px;
   }
   
   .purchase_ok{
      overflow:scroll;
   }
   table,td,tr{
      padding-top: 0px;
       padding-bottom: 0px;
       height: 0px;
       text-align:center;
   }
   #name{
      font-size:2.5em;
      font-weight:bold;
      margin-top:50px;
      text-align:center;
      font-family: 'Hanna', fantasy;
   }
   #memo{
      height:200px;
      margin: 10px;
   }
   .memo{
      font-weight:bold;
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
		font-family: 'Hanna', fantasy;
		
	}
	
	.btnclass{
		
    display: flex;
    justify-content: center;
	}
	
	.ok{
		
		margin: 20px 20px 0 0;
	}

</style>
<script>
$(()=>{
   $('#myinput').keyup(function(){
      var data = $(this).val().toLowerCase();
      
      $('#searchList>tr').filter(function(){
         var trData = $(this).text().toLowerCase(); //tr에 있는 문자를 구한다.
         var idx = trData.indexOf(data);// 없을때 -1, 있을때 0~정수
         //            true:그냥둠, false:숨겨
         $(this).toggle(idx>-1);
      });
   });
   
   $(".btn-warning").click(function(){
      alert('발주완료처리 되었습니다.');
   });
   
});

</script>
</head>
<body>
<div class="container">
   <div id="name">입고관리</div>
   <div class="search"><br/>
      <input type='text' id='myinput' placeholder='검색하기' class='form-control'/>
      <div class="purchase_ok">
          <table class="table table-hover table-active">
            <thead>
               <tr class="table-active">
                  <td>구분</td>
                  <td>제품명</td>
                   <td>입고수량</td>
                   <td>가격</td>
                   <td>거래처명</td>
                   <td>거래처번호</td>
                   <td>담당자</td>
                   <td>연락처</td>
               </tr>
               </thead>
               <tbody id='searchList'>   
                   <tr>
                      <td>1</td>
                      <td>원두</td>
                      <td>3</td>
                      <td>15,000</td>
                      <td>대진물산</td>
                      <td>5</td>
                      <td>신이솜</td>
                      <td>054-455-0000</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>원두</td>
                      <td>3</td>
                      <td>15,000</td>
                      <td>대진물산</td>
                      <td>5</td>
                      <td>신이솜</td>
                      <td>054-455-0000</td>
               
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>원두</td>
                      <td>3</td>
                      <td>15,000</td>
                      <td>대진물산</td>
                      <td>5</td>
                      <td>신이솜</td>
                      <td>054-455-0000</td>
                  </tr>

        
            </tbody>
         </table>
      </div>
   </div>
   <div class="btnclass">
  		<div class="ok"><input type="button" id="ok" value="등록"/></div>
   		<div class="ok"><input type="button" id="ok" value="삭제"/></div>
	</div>
</div>