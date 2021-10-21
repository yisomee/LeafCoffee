<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>창업문의</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>	
	const regExpUserName = /^[가-힣]{1,10}$/;
 	let oq_status = 0; // 답변대기 체크박스 클릭
	 
	function listSelect(i,searchKey,searchWord,oq_status){
		console.log(oq_status);									
		let nowPage = i;
			
		//ajax로 검색한 리스트 출력.(라디오버튼,사원번호,사원명,직급,연락처,이메일,입사일,재직여부)
		$.ajax({			
		url: "/myapp/openQuestionSearch",
		data : "searchKey="+searchKey+"&"+
				"searchWord="+searchWord+"&"+
				"nowPage="+nowPage+"&"+
				"oq_status="+oq_status,
		success:function(result){
			let openvo = $(result.openvo);
			
			if(openvo.length==0){
				let notSearch = '<div>'+searchWord+'에 대해 0건이 발견되었습니다.</div>';					
				$('#open-list').html(notSearch);
				$('.page_nation').empty();
			}else{
				let openList = '';
				
				openvo.each(function(idx,vo){
					openList +='<li><input type="radio" name="regi-select"/></li>'+
					'<li>'+vo.oq_num+'</li>'+
					'<li>'+vo.content+'</li>'+
					'<li>'+vo.username+'</li>'+
					'<li>'+vo.writedate+'</li>'+
					'<li>'+vo.oq_status+'</li>';
				});				
				$('#open-list').html(openList);
				
				// 페이징					
				$('.page_nation').empty();
				
				
				let sk1 = "'"+result.pvo.searchKey+"'"; 
				let sw1 = "'"+result.pvo.searchWord+"'";
				let st1 = "'"+result.pvo.oq_status+"'";
				
				let nowPageMinerOne = nowPage-1;  // 현재페이지-1
				nowPageMinerOne = "'"+nowPageMinerOne+"'";
								
				let nextBtn = parseInt(nowPage);
				let plusOne = parseInt("1");
				let nowPagePlusOne = parseInt(nextBtn + plusOne);				
				
				////////////////////////////////////
				if(nowPage>1){
					$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk1+','+sw1+','+st1+')"></a>');
					$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect('+nowPageMinerOne+','+sk1+','+sw1+','+st1+')"></a>');

					
				}else if(nowPage==1){
					$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk1+','+sw1+','+st1+')"></a>');
					$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect(1,'+sk1+','+sw1+','+st1+')"></a>');

										
				}				
				for (var j = result.pvo.startPage; j <=result.pvo.startPage+result.pvo.onePageViewNum-1; j++) {						
					let sk2 = "'"+result.pvo.searchKey+"'";
					let sw2 = "'"+result.pvo.searchWord+"'";
					let st2 = "'"+result.pvo.oq_status+"'";
					
					
					if(j<=result.pvo.totalPage){
						if(j==nowPage){
							$('.page_nation').append('<a class="active" href="javascript:listSelect('+j+','+sk2+','+sw2+','+st2+')">'+j+'</a>');

						}else if(j!=nowPage){
							$('.page_nation').append('<a href="javascript:listSelect('+j+','+sk2+','+sw2+','+st2+')">'+j+'</a>');

						}
					}
				}
				if(nowPage==result.pvo.totalPage){
					$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+result.pvo.totalPage+','+sk1+','+sw1+','+st1+')"></a>');

				}else{
					$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+nowPagePlusOne+','+sk1+','+sw1+','+st1+')"></a>');

				}
				$('.page_nation').append('<a class="arrow nnext" href="javascript:listSelect('+result.pvo.totalPage+','+sk1+','+sw1+','+st1+')"></a>');

			}
		}, error:function(){	
			console.log("실패");
			return false;
			}
		}); 			
	}// 자바스크립트 함수
	
	$(()=>{
		let searchKey='';
		let searchWord='';
		let oq_status=0;
		$('#ck').change(function(){
			if($('#ck').is(':checked')){
				console.log("체크박스 체크O");
				oq_status=1;
				listSelect(1,searchKey,searchWord,oq_status);
			}else{
				console.log("체크박스 체크X");
				oq_status=0;
				listSelect(1, searchKey,searchWord,oq_status);	
			}
		});
		
		
		listSelect(1, searchKey,searchWord,oq_status);	
		
		$('#searchWord').on('keyup',function(e){
			
			if(e.keyCode ===13){ // 검색창에서 엔터눌렀을 때			
			
				searchKey = $('#searchKey').val();
				searchWord = $('#searchWord').val();
				
				if(searchWord===null || searchWord==""){
					alert("검색어를 입력해주세요.");					
					return false;
					
				}else if(searchKey==="username"){
					if(!regExpUserName.test(searchWord)){
						alert("올바른 회원명을 입력해주세요");
						return false;
					}
				}
				
				let nowPage=1;
				
				$.ajax({
					url: "/myapp/openQuestionSearch",
					data : "searchKey="+searchKey+"&"+
							"searchWord="+searchWord+"&"+
							"nowPage="+nowPage+"&"+
							"oq_status="+oq_status,
					success:function(result){
						let openvo = $(result.openvo);
						
						if(openvo.length==0){
							let notSearch = '<div>'+searchWord+'에 대해 0건이 발견되었습니다.</div>';					
							$('#open-list').html(notSearch);
							$('.page_nation').empty();
						}else{
						
							let openList = '';					
							openvo.each(function(idx,vo){
								openList +='<li><input type="radio" name="regi-select"/></li>'+
											'<li>'+vo.oq_num+'</li>'+
											'<li>'+vo.content+'</li>'+
											'<li>'+vo.username+'</li>'+
											'<li>'+vo.writedate+'</li>'+
											'<li>'+vo.oq_status+'</li>';															
							}); // openvo.each문						
							$('#open-list').html(openList);
							
											
							// 페이징					
							$('.page_nation').empty(); 
							
							var sk = "'"+result.pvo.searchKey+"'"; 
							var sw = "'"+result.pvo.searchWord+"'";
							var st = "'"+result.pvo.oq_status+"'";

							
							let nowPageMinerOne = nowPage-1; 
							nowPageMinerOne = "'"+nowPageMinerOne+"'";
											
							let nextBtn = parseInt(nowPage);
							let plusOne = parseInt("1");
							let nowPagePlusOne = parseInt(nextBtn + plusOne);				
							
							
							if(nowPage>1){
								$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+','+st+')"></a>');
								$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect('+nowPageMinerOne+','+sk+','+sw+','+st+')"></a>');					
								
							}else if(nowPage==1){
								$('.page_nation').append('<a class="arrow pprev" href="javascript:listSelect(1,'+sk+','+sw+','+st+')"></a>');
								$('.page_nation').append('<a class="arrow prev" href="javascript:listSelect(1,'+sk+','+sw+','+st+')"></a>');
													
							}				
							for (var j = result.pvo.startPage; j <=result.pvo.startPage+result.pvo.onePageViewNum-1; j++) {

								if(j<=result.pvo.totalPage){
									console.log("토탈페이지=>"+result.pvo.totalPage);
									if(j==nowPage){
										$('.page_nation').append('<a class="active" href="javascript:listSelect('+j+','+sk+','+sw+','+st+')">'+j+'</a>');
									}else if(j!=nowPage){
										$('.page_nation').append('<a href="javascript:listSelect('+j+','+sk+','+sw+','+st+')">'+j+'</a>');						
									}
								}
							}
							if(nowPage==result.pvo.totalPage){
								$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+','+st+')"></a>');					
							}else{
								$('.page_nation').append('<a class="arrow next" href="javascript:listSelect('+nowPagePlusOne+','+sk+','+sw+','+st+')"></a>');
							}
							$('.page_nation').append('<a class="arrow nnext" href="javascript:listSelect('+result.pvo.totalPage+','+sk+','+sw+','+st+')"></a>');
					
						}					
						
					},error:function(){
						console.log("검색 불러오기 실패");
						return false;
					}		
				});
	
			}// 검색 엔터키 눌렀을 때
		});// 검색 클릭이벤트


		$(document).on('click','input[name=regi-select]',function(){
			let selectRecordNum = $(this).parent().next().text();
			
			$('#openReply').click(function(){
				
				function openReplyGo(oq_num){
					let openForm = document.createElement('form');
					openForm.setAttribute('method','post');
					openForm.setAttribute('action','/myapp/openReplyView');					
					
					let openValue = document.createElement('input');
					openValue.setAttribute('type','hidden');
					openValue.setAttribute('name','oq_num');
					openValue.setAttribute('value',oq_num);
					
					openForm.appendChild(openValue);
					document.body.appendChild(openForm);
					openForm.submit();
				}
				openReplyGo(selectRecordNum);
			});
		});
			
	});
	
	function replyClick(){
		let recordSelect = $('input[name=regi-select]');
		if(!recordSelect.is(':checked')){
			alert("답변할 게시글을 선택해주세요.");
			return false;
		}
	}

</script>
<style>
	/* 사원 컨테이너 */
	.emplistCon{height:650px; overflow:scroll;}
	/* ------------------ */
	/* 페이지 타이틀 */
	.page-main-notice{text-align:center;}
	.page-main-notice>h3{font-size:2em; color:#333; font-weight:700; margin-bottom:20px;}
	.page-main-notice>p{font-size:1em;}
	.page-main-notice>p:after{display:block; width:35px; border-bottom:2px solid rgb(0, 128, 192); content:''; margin:20px auto 0;}
	
	
	/*사원 검색폼*/
	.emptopCon{height:100px; background:#ddd; margin-top:50px;}
	#empImg{height:100px; width:300px; display: inline-block; margin-left:220px; margin-top:10px;}
	#empImgWord{font-size:1.4em; display:inline-block; position:relative; top:-20px; left:30px;}	
	#searchForm{display: inline-block; width: 730px; height: 60px; position: relative; top: -24px;}
	select[name="searchKey"]{height:50px; width:100px; font-size:1em;}
	input[name="searchWord"]{height:50px; width:500px; font-size:1em;}
	input[value="search"]{height:50px; width:100px; box-sizing: border-box; font-size:1em;}
	
	
	/* 사원 리스트 정렬 select박스 */
	.array_button{width:1400px; height:80px;}
	.array_button>label{font-size:1.2em; margin-left:10px;}
	input[name='replyStateView']{width:16px; height:16px; display:inline-block; margin:40px 0 0 1230px;}
	
	/* 사원리스트 top */
	#open-list-container{width:1400px; height:1000px; margin:50px auto 0 auto;}
	#open-list-top{overflow:auto; text-align:center; padding:0; background-color:#ddd; height:50px; font-size:1.13em; line-height:45px;}
	#open-list-top>li{float:left; width:10%; border-top:3px solid black;}
	#open-list-top>li:nth-child(6n+3){width:40%;}
	#open-list-top>li:nth-child(6n+5){width:20%;}
	
	/*사원 리스트*/
	#open-list{overflow:auto; text-align:center; padding:0;}
	#open-list>li{float:left; width:10%; border-bottom: 1px solid black; height:50px; font-size:1.1em; line-height:50px;white-space:nowrap; text-overflow:ellopsis; overflow:hidden;}
	#open-list>li:nth-child(6n+3){width:40%; text-align:center;}
	#open-list>li:nth-child(6n+5){width:20%; text-align:center;}
	
	
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
	#openReply{width:120px; height:30px; font-size:15px; color:#fff; border:0px solid; background:rgb(0,163,239); cursor:pointer;}
	
	/* 네비바 창업문의목록 선택된 파란색 밑줄 */
   .top-banner-nav>.tbn-menu1{border-bottom:4px solid rgb(0, 163, 239);}	
</style>
</head>
<body>
	<%@ include file="/inc/adminTop.jspf" %>
	<div class=top-banner-imgCon></div>
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="<%=request.getContextPath()%>/openQuestionPage">창업문의목록</a></div>	   	   	   
	</nav>
	<!-- 메인부 -->
 	
	<main>
		<div id="open-list-container">
			<div class="page-main-notice">
				<h3>창업문의</h3>
				<p>LEAF커피 창업문의 내용을 보실 수 있습니다.</p>
			</div>						
			<!-- 회원 검색폼 -->
			<div class="emptopCon">
				<span id="empImg"><img src="img/empimg.png"><span id="empImgWord">문의검색</span></span>
				<div id="searchForm">
					<select name="searchKey" id="searchKey">
						<option value="username">작성자</option>
						<option value="content">내용</option>						
					</select>
					<input type="text" name="searchWord" id="searchWord"/>
					<input type="button" value="search"/>
				</div>
			</div>
			<div class="array_button">
				<!-- 리스트 출력방식 CheckBox -->				
				<input type="checkbox" name="oq_status" value="1" id="ck"/><label for="ck">답변대기만 보기</label>													
			</div>
			<!-- 사원 리스트 -->
			<div id="emplistCon">								
				<ul id="open-list-top">
					<li>선택</li>				
					<li>NO</li>
					<li>제목</li>
					<li>작성자</li>
					<li>등록일</li>
					<li>답변상태</li>					
				</ul>
				<ul id="open-list">	
					<li><input type="radio" id="regi-select" name="regi-select"/></li>
					<li>1</li>
					<li><a href="#">구미에서 점포를 내고 싶은데</a></li>
					<li>이형화</li>
					<li>2021-09-02</li>
					<li>답변완료</li>									
					<!--  -->					
				</ul>				
			</div>
			<!-- 페이징 버튼 -->
			<div class="page_wrap">
				<!-- 사원등록 -->
				<div class="emp-button">
					<input type="submit" value="자세히보기" name="openReply" id="openReply" onclick="replyClick()"/>					
				</div>
				<div class="page_nation">
				</div>
			</div>	
		</div>
	</main>

	
<%@ include file="/inc/bottom3.jspf" %>
