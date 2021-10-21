<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans&family=Roboto:wght@300&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
   body{margin:0;font-family:'Noto Sans'}
   ul,li{list-style-type: none;padding:0;margin:0;}
   a{color:gray}
   a:link, a:hover a:visited{text-decoration: none;}
   button{background-color:white;cursor:pointer;}
   header img{width:100%;height:250px;}
   header{height:250px;position:relative;}
   #headerText{position:relative;top:-100px;left:790px;font-size:3em;color:white;opacity:0.5}
   #detailMenu{display:flex;justify-content:center;width:100%;border-bottom:1px solid gray;}
   #detailMenu>div{padding:15px 40px;}
   #menu1{border-bottom:4px solid rgb(0, 163, 239);}
   .container{width:1000px;margin:0 auto;}
   .delete_search{display:flex;justify-content:space-between;border-bottom:3px solid gray;margin-top:60px}
   .delete_search>form:nth-child(1){padding-top:18px}
   .delete_search>form:nth-child(1)>button{border:1px solid gray;padding:2px 3px;}
   .delete_search>div{padding-bottom:15px}
   .delete_search>div>form{border:1px solid gray;}
   ::placeholder{padding-left:5px}
   #searchKeyword{height:30px;width:250px;padding:4px;margin-right:2px;border:none;}
   #searchIcon{font-size:1.2em; padding:6px 6px 4px 6px;border:none;}
   .boardList{overflow:auto;}
   .boardList>li{float:left;border-bottom:1px solid gray; height:40px; line-height:40px;}
   .boardList>li:nth-child(5n+1){width:7.5%;padding-left:10px}
   .boardList>li:nth-child(5n+2){width:11%;color:#62605F}
   .boardList>li:nth-child(5n+3){width:56%;color:#62605F}
   .boardList>li:nth-child(5n+4){width:18%;color:#62605F}
   .boardList>li:nth-child(5n+5){width:6.5%;color:#62605F}
   .boardList>li:nth-child(1){width:7.5%;}
   .boardList>li:nth-child(2){width:35%;font-weight:bold;color:#382E2C}
   .boardList>li:nth-child(3){width:34%;font-weight:bold;color:#382E2C}
   .boardList>li:nth-child(4){width:14.5%;font-weight:bold;color:#382E2C}
   .boardList>li:nth-child(5){width:8%;font-weight:bold;color:#382E2C}
   .paging{display:flex;justify-content:center;margin:30px 0;font-size:1.2em;}
   .paging>li{margin:0 10px;}
   .now>a{font-weight:bold;text-decoration:underline solid #00A3EF;color:#382E2C;font-size:1.1em}
</style>
<script>
$(()=>{   
   $("#headerText").animate({
       top: "-160px", opacity:1
       }, 1200,);
   $("#menu1").click(function(){
      $(this).css('border-bottom','4px solid rgb(0, 163, 239)');
      $("#menu2").css('border','none');
   });
   $("#menu2").click(function(){
      $(this).css('border-bottom','4px solid rgb(0, 163, 239)');
      $("#menu1").css('border','none');
   });
   $("#allCheck").click(function(){
      $(".boardList input").prop("checked", $(this).prop("checked"));   
   });
   $("#delBtn").click(function(){
      $("#selectDel").attr("action","/myapp/deleteCheck");
      $("#selectDel").submit();   
   });


});
</script>
</head>
<body>
<%@ include file="/inc/top.jspf" %>
<header>
   <img src="https://www.baristapaulbassett.co.kr/images/menu/subVisual_coffee.jpg"/>
   <div id="headerText">WHAT'S NEW</div>
</header>
<nav id="detailMenu"> 
   <div id="menu1"><a href="/myapp/noticeList">공지사항</a></div>
   <div id="menu2"><a href="/myapp/social">사회공헌</a></div>
</nav>
<div class="container">
      <div class="delete_search">
  		 <form method="post" action="/myapp/noticeList" id="listform">
         <div>         
            <input type="text" id="searchKeyword" name="searchKeyword" placeholder="검색어를 입력해 주세요."/><button id="searchIcon"><i class="fas fa-search"></i></button>         
         </div> 
         </form>       
      </div>
     <form id="selectDel" action="/myapp/deleteCheck" method="post">
      <ul class="boardList">
         <li>NO</li>
         <li>제목</li>
         <li>등록일</li>
         <li>조회수</li>         
         <c:forEach var="noticeVo" items="${list}"> 
            <li><input type="checkbox" name="delCheck" value="${noticeVo.no}"/></li>
            <li>${noticeVo.no }</li>
            <li><a href="/myapp/noticeDetail?no=${noticeVo.no }&nowpage=${pVo.nowPage}">${noticeVo.title }</a></li>
            <li>${noticeVo.writedate }</li>  
            <li>${noticeVo.hit }</li>
         </c:forEach>
      </ul>     
      </form>       
      <ul class="paging">
         <c:if test="${pVo.nowPage>1}">
            <li><a href="/myapp/noticeList?nowPage=${pVo.nowPage-1}<c:if test='${searchKeyword != null}'>&searchKeyword=${pVo.searchKeyword}</c:if>"><i class="fas fa-angle-left"></i></a></li>
         </c:if>
      <!-- 시작페이지부터 5개의 페이지를 출력한다. -->
         <!-- 6,7,8,9,10 -->
         <c:forEach var="i" begin="${pVo.startPage }" end="${pVo.startPage+pVo.onePageNumCount-1 }">
         <!-- 출력할 페이지번호 총페이지수보다 작을때만 출력한다. -->
         <c:if test="${i<=pVo.totalPage }">
            <c:if test="${i==pVo.nowPage }">
               <li class="now">
            </c:if>
            <c:if test="${i!=pVo.nowPage }">
               <li>
            </c:if>
            <a href="/myapp/noticeList?nowPage=${i}<c:if test='${searchKeyword != null}'>&searchKeyword=${pVo.searchKeyword}</c:if>">${i}</a></li>
         </c:if>
         </c:forEach>
         <c:if test="${pVo.nowPage<pVo.totalPage}">
            <li class='page-item'><a href="/myapp/noticeList?nowPage=${pVo.nowPage+1 }<c:if test='${searchKeyword != null}'>&searchKeyword=${pVo.searchKeyword}</c:if>"><i class="fas fa-angle-right"></i></a></li>
         </c:if>   
      </ul>
    
</div>
</body>
</html>