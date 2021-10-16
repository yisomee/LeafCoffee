<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원관리</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>

<script>
	const regExpEmpNum = /^[0-9]{1,4}$/;
	const regExpDeptName = /^[가-힣]{1,10}$/;
	
	function listSelect(i,searchKey,searchWord){
											
		let nowPage = i;
			
		//ajax로 검색한 리스트 출력.(라디오버튼,사원번호,사원명,직급,연락처,이메일,입사일,재직여부)
		$.ajax({
		url: "/myapp/empSearch",
		data : "searchKey="+searchKey+"&"+
				"searchWord="+searchWord+"&"+
				"nowPage="+nowPage,	
		success:function(result){ // List<EmployeeVO>
			let empvo = $(result.empvo);
			
			if(empvo.length==0){
				let notSearch = '<li>'+searchWord+'에 대해 0건이 발견되었습니다.</li>';					
				$('#emp-list').html(notSearch);
			}else{
				let empNumList = '';
				
				empvo.each(function(idx,vo){
					empNumList +='<li><input type="radio" name="emp-select"/></li>'+
								'<li>'+vo.emp_num+'</li>'+
								'<li>'+vo.username+'</li>'+
								'<li>'+vo.dept_name+'</li>'+
								'<li>'+vo.emp_posi+'</li>'+
								'<li>'+vo.tel+'</li>'+
								'<li>'+vo.email+'</li>'+
								'<li>'+vo.emp_regdate+'</li>'+
								'<li>'+vo.emp_status+'</li>';
				});				
				$('#emp-list').html(empNumList);
				
				// 페이징					
				$('.page_nation').empty(); // 버튼을 담을 div를 비워줌
				
				var sk = "'"+result.pvo.searchKey+"'"; //스크립트 메소드의 매개변수 String값을 셋팅시 값으로 인식시켜주기 위함
				var sw = "'"+result.pvo.searchWord+"'";
				
				let nowPageMinerOne = nowPage-1;  // 현재페이지-1
				nowPageMinerOne = "'"+nowPageMinerOne+"'";
								
				let nextBtn = parseInt(nowPage);
				let plusOne = parseInt("1");
				let nowPagePlusOne = parseInt(nextBtn + plusOne);				
				
				////////////////////////////////////
				if(nowPage>1){
					$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
					$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect('+nowPageMinerOne+','+sk+','+sw+')"></a>');					
					
				}else if(nowPage==1){
					$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
					$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
										
				}				
				for (var j = result.pvo.startPage; j <=result.pvo.startPage+result.pvo.onePageViewNum-1; j++) {						
					var sk = "'"+result.pvo.searchKey+"'";
					var sw = "'"+result.pvo.searchWord+"'";
					if(j<=result.pvo.totalPage){
						if(j==nowPage){
							$('.page_nation').append('<a class="active" href="javascript:listSelect('+j+','+sk+','+sw+')">'+j+'</a>');
						}else if(j!=nowPage){
							$('.page_nation').append('<a href="javascript:listSelect('+j+','+sk+','+sw+')">'+j+'</a>');						
						}
					}
				}
				if(nowPage==result.pvo.totalPage){
					$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+')"></a>');					
				}else{
					$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+nowPagePlusOne+','+sk+','+sw+')"></a>');
				}
				$('.page_nation').append('<a class="arrow nnext" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+')"></a>');
			}
		}, error:function(){	
			console.log("실패");
			return false;
			}
		}); 			
	}// 자바스크립트 함수
	
	$(()=>{
		// 처음 화면 로그인시
		listSelect(1, '', '');
	
		
		$('#searchEmpBtn').on('click',function(){
			let searchKey = $('#searchKey').val();
			let searchWord = $('#searchWord').val();
			
			if(searchWord===null || searchWord==""){
				alert("검색어를 입력해주세요.");
				return false;
			}else if(searchKey==='emp_num'){
				if(!regExpEmpNum.test(searchWord)){
					alert("사원번호는 4자리 숫자만 입력가능합니다.");
					return false;
				}
			}else if(searchKey==="username"){
				if(!regExpDeptName.test(searchWord)){
					alert("올바른 사원명을 입력해주세요");
					return false;
				}
			}else if(searchKey==="dept_name"){
				if(!regExpDeptName.test(searchWord)){
					alert("올바른 부서명을 입력해주세요");
					return false;
				}
			}			
			let nowPage=1;
			
			$.ajax({
				url: "/myapp/empSearch",
				data : "searchKey="+searchKey+"&"+
						"searchWord="+searchWord+"&"+
						"nowPage="+nowPage,
				success:function(result){
					let empvo = $(result.empvo);
					
					if(empvo.length==0){
						let notSearch = '<li>'+searchWord+'에 대해 0건이 발견되었습니다.</li>';					
						$('#emp-list').html(notSearch);
						
					}else{
						let empNumList = '';					
						empvo.each(function(idx,vo){
							empNumList +='<li><input type="radio" name="emp-select"/></li>'+
										'<li>'+vo.emp_num+'</li>'+
										'<li>'+vo.username+'</li>'+
										'<li>'+vo.dept_name+'</li>'+
										'<li>'+vo.emp_posi+'</li>'+
										'<li>'+vo.tel+'</li>'+
										'<li>'+vo.email+'</li>'+
										'<li>'+vo.emp_regdate+'</li>'+
										'<li>'+vo.emp_status+'</li>';						
						}); // empvo.each문
						
						$('#emp-list').html(empNumList);
						
										
						// 페이징					
						$('.page_nation').empty(); // 버튼을 담을 div를 비워줌
						
						var sk = "'"+result.pvo.searchKey+"'"; //스크립트 메소드의 매개변수 String값을 셋팅시 값으로 인식시켜주기 위함
						var sw = "'"+result.pvo.searchWord+"'";
						
						let nowPageMinerOne = nowPage-1;  // 현재페이지-1
						nowPageMinerOne = "'"+nowPageMinerOne+"'";
										
						let nextBtn = parseInt(nowPage);
						let plusOne = parseInt("1");
						let nowPagePlusOne = parseInt(nextBtn + plusOne);				
						
						////////////////////////////////////
						if(nowPage>1){
							$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
							$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect('+nowPageMinerOne+','+sk+','+sw+')"></a>');					
							
						}else if(nowPage==1){
							$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
							$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect(1,'+sk+','+sw+')"></a>');
												
						}				
						for (var j = result.pvo.startPage; j <=result.pvo.startPage+result.pvo.onePageViewNum-1; j++) {						
							var sk = "'"+result.pvo.searchKey+"'";
							var sw = "'"+result.pvo.searchWord+"'";
							if(j<=result.pvo.totalPage){
								if(j==nowPage){
									$('.page_nation').append('<a class="active" href="javascript:listSelect('+j+','+sk+','+sw+')">'+j+'</a>');
								}else if(j!=nowPage){
									$('.page_nation').append('<a href="javascript:listSelect('+j+','+sk+','+sw+')">'+j+'</a>');						
								}
							}
						}
						if(nowPage==result.pvo.totalPage){
							$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+')"></a>');					
						}else{
							$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+nowPagePlusOne+','+sk+','+sw+')"></a>');
						}
						$('.page_nation').append('<a class="arrow nnext" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+')"></a>');
					
						
					}
					
										
					
				},error:function(){
					console.log("검색 불러오기 실패");
					return false;
				}		
			});

		});// 검색 클릭이벤트

		
		////////////////////////////////
		$(document).on('click','input[name=emp-select]',function(){
			let selectEmpNum = $(this).parent().next().text();
			
			$('#empChange').click(function(){
				
				function empChangeGo(emp_num){
					let empForm = document.createElement('form');
					empForm.setAttribute('method','post');
					empForm.setAttribute('action','/myapp/employeeChange');
					
					let empValue;
					empValue = document.createElement('input');
					empValue.setAttribute('type','hidden');
					empValue.setAttribute('name','emp_num');
					empValue.setAttribute('value',emp_num);
					
					empForm.appendChild(empValue);
					document.body.appendChild(empForm);
					empForm.submit();
				}
				empChangeGo(selectEmpNum);
			});
		});
			
	});		

</script>
<style>
	/* 사원 컨테이너 */
	.emplistCon{height:650px; overflow:scroll;}
	/* ------------------ */
		
	/*사원 검색폼*/
	.emptopCon{height:100px; background:#ddd;}
	.searchWord-titleImg{height:100px; width:300px; display: inline-block; margin-left:220px; margin-top:15px;}
	.searchWord-title{font-size:1.4em; display:inline-block; position:relative; top:-24px; left:35px;}	
	#searchForm{display: inline-block; width: 730px; height: 60px; top: -29px;position:relative;}
	select[name=searchKey]{height:50px; width:100px; font-size:1em;}
	input[name="searchWord"]{height:50px; width:500px; font-size:1em;}
	input[value="검색하기"]{height:50px; width:100px; box-sizing: border-box; font-size:1em;}
	
	
	
	
	
	/* 사원리스트 top */
	.manage-List-container{width:1400px; height:1000px; margin:50px auto 0 auto;}	
 	#emp-list-top{overflow:auto; text-align:center; padding:0; background-color:#ddd; height:50px; font-size:1.13em; line-height:45px;}
	#emp-list-top>li{float:left; width:10%; border-top:3px solid gray;}
	#emp-list-top>li:nth-child(9n+1){width:3%;}
	#emp-list-top>li:nth-child(9n+2){width:7%;}
	#emp-list-top>li:nth-child(9n+5){width:10%;}	
	#emp-list-top>li:nth-child(9n+6){width:15%;}
	#emp-list-top>li:nth-child(9n+7){width:20%;}
	#emp-list-top>li:nth-child(9n+8){width:15%;}
	 
	/*사원 리스트*/
	.manage-listCon{overflow:auto; text-align:center; padding:0; margin-top:70px;}
	#emp-list>li{float:left; width:10%; border-bottom: 1px solid gray; height:50px; font-size:1.1em; line-height:50px;}
	#emp-list>li:nth-child(9n+1){width:3%;}
	#emp-list>li:nth-child(9n+2){width:7%;}
	#emp-list>li:nth-child(9n+5){width:10%;}
	#emp-list>li:nth-child(9n+6){width:15%;}
	#emp-list>li:nth-child(9n+7){width:20%; white-space:nowrap; text-overflow:ellipsis; overflow:hidden;}
	#emp-list>li:nth-child(9n+8){width:15%;}		
	
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
	<%@ include file="/inc/adminTop.jspf" %>
	<nav class="top-banner-nav">
	  <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/employeeManagePage">사원검색</a></div>
	  <div class="tbn-menu2"><a href="<%=request.getContextPath()%>/employeeRegiPage">사원등록</a></div>	   
	</nav>
	
	<!-- 메인부 -->
	<!-- <form method="post" action="<%=request.getContextPath()%>/employeeChange">   -->		
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
						<select name="searchKey" id="searchKey">
							<option value="emp_num">사원번호</option>
							<option value="username">사원명</option>
							<option value="dept_name">부서명</option>
						</select>
						<input type="text" name="searchWord" id="searchWord"/>
						<input type="button" value="검색하기" id="searchEmpBtn"/>
					</div>
				</div>

				<!-- 사원 리스트 -->
				<div class="manage-listCon">											
					<ul id="emp-list-top">
						<li><i class="fas fa-check"></i></li>				
						<li>NO</li>
						<li>사원명</li>
						<li>부서명</li>
						<li>직급</li>
						<li>연락처</li>
						<li>E-mail</li>
						<li>입사일</li>
						<li>재직여부</li>
					</ul>
					<ul id="emp-list">																	
					</ul>				
				</div>
				<!-- 페이징 버튼 -->
				<div class="page_wrap">
					<!-- 사원등록 -->
					<div class="emp-button">					
						<input type="button" value="사원수정" name="empChange" id="empChange"/>
					</div>
					<div class="page_nation">
					</div>
				</div>	
			</div>
		</main>
<!-- 	</form>  -->

	
	
	<%@ include file="/inc/bottom3.jspf" %>
