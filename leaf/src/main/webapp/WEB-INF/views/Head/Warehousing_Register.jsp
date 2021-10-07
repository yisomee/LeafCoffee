<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body{
	font-family: 'Hanna', fantasy;
}

   .container{
      border:none;
      max-width: 1400px;
      display: flex;
      justify-content: center;
      margin:0 auto;
     
   }
   #memo{
      width: 542px;
      height:150px;
   }
   .row{
      width:100px;
      display: inline-block;
      height: 40px;
   }
   .Nutrition{
      position: relative;
       margin-left: 105px;
       top: -20px;
   }
   img{
      width:200px;
      height:200px;
      border-radius:100%;
      position: relative;
      top: -20px;
       left: 24px;
   }
   #img{
      position: relative;
      width: 300px;
      height:300px;
       left: 400px;
       top: -517px;
   }
   #reg, #submit{
      text-align:center;
      font-size:2em;
      font-weight:bold;
   }
   .nutname{
      width:100px;
      float:left;
   }
   .will-be-moved {
      top: -143px;
       position: relative;
   }
   input{
      border:none;
      border-right:0px; 
      border-top:0px; 
      border-left:0px; 
      border-bottom:1px solid;
      outline:none;
   }
   .inputbox{
      margin:100px;
      
      
   }
   #submit>input{
     background-color:white;
      width: 100px;
      height:50px;
      border-radius: 10px;
      transition-duration: 0.3s;
      border:1px solid rgb(0, 163, 239);
      color:rgb(0, 163, 239);
      opacity: 0.8;
   }
   #file>input{
     background-color:white;
      width: 250px;
      height:25px;
      border-radius: 10px;
      transition-duration: 0.3s;
      border:1px solid rgb(0, 163, 239);
      color:rgb(0, 163, 239);
      opacity: 0.8;
   }
   
 	.btn{
	
     
		background-color:white;
		width: 100px;
		height:50px;
		border-radius: 10px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 0.6em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
		
	}
</style>
<script>
   
   $(() => {
      $("input[type='file']").change(function(event){
         var imageFile = event.target.files[0];
         
         var reader = new FileReader();
         reader.onload = (e) => {
            $("#img").children().attr("src", e.target.result);
         };
         reader.readAsDataURL(imageFile);
      });
   });
   
</script>

</head>
<meta charset="UTF-8">

<body>
   <div class="container">
      
      <div class="inputbox">
         <div id="reg">입고등록</div><br/><br/>
         
         
         <div class="row">제품명</div>
            <input type="text"/><br/>
         <div class="row">입고수량</div>   
            <input type="text"/><br/>
         <div class="row">가격</div>   
            <input type="text"/><br/>   
         <div class="row">거래처명</div>
            <input type="text"/><br/>   
         <div class="row">거래처번호</div>
            <input type="text"/><br/>   
         <div class="row">담당자</div>
            <input type="text"/><br/>
         <div class="row">연락처</div>
            <input type="text"/><br/>       
            
            <div><br/>
       
         <div id="submit"><input type="submit" value="등록하기"  class="btn"/></div>
         
            
         </div>
   </div>   
   </div>