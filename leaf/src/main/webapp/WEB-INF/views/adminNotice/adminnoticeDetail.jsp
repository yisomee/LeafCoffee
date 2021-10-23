<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/franTop.jspf" %>
<style>
	.container{

		margin:0 auto;
		max-width: 1250px;
	}
	h3{
		margin-top: 50px;
	}
	.menu_bar{
		border: 1px solid gray;
	    margin-top: 50px;
	    font-size: 1.3em;
	    line-height: 60px;
	}
	.bottom_bar{
		margin-top: 50px;
	    line-height: 30px;
		border-top:3px solid gray;
		border-bottom:3px solid gray;
		margin-bottom: 50px;
	}

	.btn{
		margin-left:5px;
		background-color:rgb(119, 119, 119);
		color:white;
		width:100px;
		height:40px;
	}
	.img{
	    height: 1000px;
	    width: 1000px;
	    margin: 110px;
	}
	.button{
		margin:110px;
		display:flex;
    	justify-content: flex-end;
	}
	b{
		margin-left:30px;
	}
	.span{
		width:150px;
		background-color:rgb(244, 244, 242);
	}
	.content{
		 margin-left: 110px;
	}
</style>
<script>
	function delCheck(admin_no){
		if(confirm("삭제할까요?")){
			location.href='/myapp/adminnoticeDel?admin_no='+admin_no;
		}
	};
</script>
<div class="container">
	<h3><b>공지사항</b></h3>
	<div class="menu_bar"><b> ${adminnoticeVo.admin_title }</b></div>
	<img src="img/${adminnoticeVo.img}" class="img"/>
	<div class="content">${adminnoticeVo.admin_content }</div>
	<div class="button">
		<input type="button" value="목록" class="btn" onClick="location.href='adminnoticeMain'">
		<input type="button" value="수정하기"class="btn" onclick="location.href='/myapp/adminnoticeEdit?no=${adminnoticeVo.admin_no}'">
		<input type="button" value="삭제하기"class="btn" onclick="location.href='javascript:delCheck(${adminnoticeVo.admin_no})'">
	</div>
	<div class="bottom_bar">
		<b>윗글</b>
		<hr/>
		<b>아랫글</b>
	</div>
</div>
<%@ include file="/inc/bottom.jspf" %>