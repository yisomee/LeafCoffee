<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
	/* 사원 컨테이너 */
	.emplistCon{height:650px; overflow:scroll;}
	/* ------------------ */
		
	/*사원 검색폼*/
	.emptopCon{height:100px; background:#ddd;}
	.searchWord-titleImg{height:100px; width:300px; display: inline-block; margin-left:220px; margin-top:15px;}
	.searchWord-title{font-size:1.4em; display:inline-block; position:relative; top:-24px; left:35px;}	
	#searchForm{display: inline-block; width: 730px; height: 60px; top: -29px;position:relative;}
	select[name=searchEmpSelect]{height:50px; width:100px; font-size:1em;}
	input[name="searchWord"]{height:50px; width:500px; font-size:1em;}
	input[value="search"]{height:50px; width:100px; box-sizing: border-box; font-size:1em;}
	
	/* 사원 리스트 정렬 select박스 */
	.array_button{width:1400px; height:80px;}
	select[name=empArraySelect]{font-size:1.1em; display:inline-block; width:100px; height:40px; position:relative; left:1300px; top:20px;}
	
	/* 사원리스트 top */
	.manage-List-container{width:1400px; height:800px; margin:50px auto 0 auto;}	
 	#emp-list-top{overflow:auto; text-align:center; padding:0; background-color:#ddd; height:50px; font-size:1.13em; line-height:45px;}
	#emp-list-top>li{float:left; width:10%; border-top:3px solid gray;}
	#emp-list-top>li:nth-child(8n+1){width:3%;}
	#emp-list-top>li:nth-child(8n+2){width:7%;}
	#emp-list-top>li:nth-child(8n+5){width:15%;}	
	#emp-list-top>li:nth-child(8n+6){width:25%;}
	#emp-list-top>li:nth-child(8n+7){width:20%;}
	 
	/*사원 리스트*/
	.manage-listCon{overflow:auto; text-align:center; padding:0;}
	#emp-list>li{float:left; width:10%; border-bottom: 1px solid gray; height:50px; font-size:1.1em; line-height:50px;}
	#emp-list>li:nth-child(8n+1){width:3%;}
	#emp-list>li:nth-child(8n+2){width:7%;}
	#emp-list>li:nth-child(8n+5){width:15%;}
	#emp-list>li:nth-child(8n+6){width:25%;}
	#emp-list>li:nth-child(8n+7){width:20%;}
	
	
	
	/*================================================*/
	
	/* 페이징 번호*/
	.page_wrap {text-align:center; font-size:0; height:30px; margin-top: 20px; position:relative;}
	.page_nation {display:inline-block; position:relative;}
	.page_nation a {display:block; margin:0 3px; float:left; border:1px solid #e6e6e6; width:28px;
					height:28px; line-height:28px; text-align:center; background-color:#fff; font-size:13px;
					color:#999999; text-decoration:none;}
	.page_nation .arrow {border:1px solid #ccc;}
	.page_nation .pprev {background:#f8f8f8 url('img/page_pprev.png') no-repeat center center; margin-left:0;}
	.page_nation .prev {background:#f8f8f8 url('img/page_prev.png') no-repeat center center; margin-right:7px;}
	.page_nation .next {background:#f8f8f8 url('img/page_next.png') no-repeat center center; margin-left:7px;}
	.page_nation .nnext {background:#f8f8f8 url('img/page_nnext.png') no-repeat center center; margin-right:0;}
	.page_nation a.active {background-color:#42454c; color:#fff; border:1px solid #42454c;}
	
	/* 사원 등록, 수정버튼 */
	.emp-button{display:inline-block; position:absolute; left:1280px;}	
	#empChange{width:120px; height:30px; font-size:15px; border:0px solid; color:#fff; background:rgb(0,163,239); cursor:pointer;}
	
	/* 네비바 사원검색 선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu1{border-bottom:4px solid rgb(0, 163, 239);}	
</style>
</head>
<body>
	<%@ include file="/inc/top3.jspf" %>
	<nav class="top-banner-nav">
	  <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/employeeManagePage">사원검색</a></div>
	  <div class="tbn-menu2"><a href="<%=request.getContextPath()%>/employeeRegiPage">사원등록</a></div>	   
	</nav>
	
	<!-- 메인부 -->
	<form method="post" action="<%=request.getContextPath()%>/employeeChange">		
		<main>	
			<div class="notice-con">
				<div class="page-main-notice">
					<h3>사원관리</h3>
					<p>사원 정보를 확인하실 수 있습니다.</p>
				</div>	
			</div>
			<div class="manage-List-container">
				<!-- 회원 검색폼 -->
				<div class="emptopCon">
					<span class="searchWord-titleImg"><img src="img/empimg.png"><span class="searchWord-title">직원검색</span></span>
					<div id="searchForm">
						<select name="searchEmpSelect">
							<option value="empno">사원번호</option>
							<option value="empname">사원명</option>
							<option value="deptname">부서명</option>
						</select>
						<input type="text" name="searchWord" id="searchWord"/>
						<input type="button" value="search"/>
					</div>
				</div>
				
				<div class="array_button">
					<!-- 정렬기준 선택 -->				
					<select name="empArraySelect">
						<option value="" selected>--정렬--</option>
						<option value="arrayEmpNo">사원번호</option>
						<option value="arrayEmpName">사원명</option>
						<option value="arrayEmpPosi">직급순</option>
					</select>					
				</div>
				<!-- 사원 리스트 -->
				<div class="manage-listCon">											
					<ul id="emp-list-top">
						<li>선택</li>				
						<li>사원번호</li>
						<li>사원명</li>
						<li>직급</li>
						<li>연락처</li>
						<li>이메일</li>
						<li>등록일</li>
						<li>재직여부</li>
					</ul>
					<ul id="emp-list">	
						<li><input type="radio" id="emp-select" name="emp-select"/></li>
						<li>2000</li>
						<li>박동현</li>
						<li>부장</li>
						<li>010-1111-2222</li>
						<li>bakdohy@naver.com</li>
						<li>2021-09-25</li>
						<li>Y</li>
						
						<li><input type="radio" id="emp-select" name="emp-select"/></li>
						<li>2001</li>
						<li>박동현</li>
						<li>부장</li>
						<li>010-1111-2222</li>
						<li>bakdohy@naver.com</li>
						<li>2021-09-25</li>
						<li>Y</li>
						
						<li><input type="radio" id="emp-select" name="emp-select"/></li>
						<li>2002</li>
						<li>박동현</li>
						<li>부장</li>
						<li>010-1111-2222</li>
						<li>bakdohy@naver.com</li>
						<li>2021-09-25</li>
						<li>Y</li>
						
						<li><input type="radio" id="emp-select" name="emp-select"/></li>
						<li>2003</li>
						<li>박동현</li>
						<li>부장</li>
						<li>010-1111-2222</li>
						<li>bakdohy@naver.com</li>
						<li>2021-09-25</li>
						<li>Y</li>
						
						<li><input type="radio" id="emp-select" name="emp-select"/></li>
						<li>2004</li>
						<li>박동현</li>
						<li>부장</li>
						<li>010-1111-2222</li>
						<li>bakdohy@naver.com</li>
						<li>2021-09-25</li>
						<li>Y</li>
					</ul>				
				</div>
				<!-- 페이징 버튼 -->
				<div class="page_wrap">
					<!-- 사원등록 -->
					<div class="emp-button">					
						<input type="submit" value="사원수정" name="empChange" id="empChange"/>
					</div>
					<div class="page_nation">
						<a class="arrow pprev" href="#"></a>
						<a class="arrow prev" href="#"></a>
						<a class="active" href="#">1</a> 
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a class="arrow next" href="#"></a>
						<a class="arrow nnext" href="#"></a>
					</div>
				</div>	
			</div>
		</main>
	</form>
<script>
	$(()=>{
		
	});
</script>	
	
	
	<%@ include file="/inc/bottom3.jspf" %>
