<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>

	.container{
		display: flex;
		flex-direction: column;
		margin:0 auto;
		max-width: 1250px;
	}
	h3{
		margin-top: 50px;
	}
	.menu_bar{
		border:2px solid rgb(229, 227, 215);
		margin-top: 50px;
	}
	.menu_bar>ul, .menu_bar2>ul{
		display:flex;
		margin:20px;
	}

	.notice>ul{
		display:flex;
		margin-top:20px;
		justify-content: space-around;
		border-top:3px solid gray;
		border-bottom:1px solid gray;
		text-align: center;
	}
	.notice li{
		margin:10px;
	}
	.menu_bar li, .menu_bar2 li{
		margin: 0 40px;
		line-height:40px;
		height:40px;
	    width: 215px;
	    text-align: center;
	    margin-left: 40px;
    	margin-right: 40px;
    	border-radius: 5px;
    	cursor: pointer;
	}
	.menu_bar2{
		background-color:rgb(244, 244, 242);
		display:flex;
		justify-content: flex-end;
		margin-top: 50px;
	}
	.menu_bar2 li{
		display:flex;
		width:360px;
		height: 40px;
	}
	.seach{
		border:2px solid rgb(229, 227, 215);
		width:300px;
	}
	.btn{
		margin-left:5px;
		background-color:rgb(119, 119, 119);
		color:white;
	}
	.notice_content>ul{
		display:flex;
		height: 300px;
		justify-content: space-around;
		align-items: center;
		text-align: center;
		border-bottom: 1px solid;
	}
	.notice_content li{
		margin:10px;
	}
	.notice_content{
		height: 300px;
		border-bottom:1px solid gray;
		height:auto;
	}
	.img{
		height: 250px;
		width: 300px;
	}
	.notice li:nth-of-type(1), .notice_content li:nth-of-type(1){
		width:30px;
	}
	.notice li:nth-of-type(2), .notice_content li:nth-of-type(2){
		width:300px;
	}
	.notice li:nth-of-type(3), .notice_content li:nth-of-type(3){
		width:200px;
	}
	.notice li:nth-of-type(4), .notice_content li:nth-of-type(4){
		width:500px;
	}
	
	.selected {
		color: white;
		background-color: rgb(0, 163, 239);
	}
	.not-selected {
		color: black;
		background-color: rgb(244, 244, 242);
	}


</style>
<script>
$(function(){
/*	
	$(".menu").click(function(){
		$(this).css('background-color','rgb(0, 163, 239)').css('color','white');
		$(".menu :not(this)").css('background-color','rgb(255, 255, 255)').css('color','black');
	});
*/
	$(".menu").click(function(){
		$(".menu").addClass("not-selected");
		$(".menu").removeClass("selected");
		$(this).removeClass("not-selected");
		$(this).addClass("selected");
	});

});
</script>
<div class="container">
	<h3><b>공지사항</b></h3>
	<div class="menu_bar">
		<ul>
			<li class="menu selected">All</li>
			<li class="menu not-selected">상품출시</li>
			<li class="menu not-selected">LEAF와 문화</li>
			<li class="menu not-selected">LEAF 사회공헌</li>
		</ul>
	</div>
	<div class="menu_bar2">
		<ul>
			<li id=""><input type="text" class="seach" placeholder="검색어를 입력해 주세요."/><input type="submit" value="검색" class="btn"/></li>
		</ul>
	</div>
	<div class="notice">
		<ul>
			<li>NO</li>
			<li>이미지</li>
			<li>구분</li>
			<li>내용</li>
			<li>등록일</li>
		</ul>
	</div>
	<div class="notice_content">
		<c:forEach var="adminnoticeVO" items="${list}"> 
            <ul>
				<li>${adminnoticeVO.admin_no }</li>
				<li><img src="img/${adminnoticeVO.img}" class="img"/></li>
				<li>${adminnoticeVO.section }</li>
	            <li><b><a href="/myapp/adminnoticeDetail?no=${adminnoticeVO.admin_no }">${adminnoticeVO.admin_title }</a></b></li>
	            <li>${adminnoticeVO.admin_writedate }</li>
			</ul>
         </c:forEach>
	</div>
	<input type="button" value="글등록" class="btn" onClick="location.href='adminnoticeWrite'">
</div>

<%@ include file="/inc/bottom.jspf" %>