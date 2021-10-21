<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출현황</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<style> 
	.choiceouterdiv{width:100%; background:#E6F4F1;}
	.datechoicelabel{display:inline-block; position: absolute; width:250px; height:100px; margin-left:123px;}
	.datechoicelabel span{position:absolute; font-size:1.7em; top:27px; left:133px;}
	.datechoicelabel:after{content: ''; display: inline-block;height: 100px; border-left: 2px solid #777; margin-left: 300px;}
	.choiceDatediv{margin:50px auto; width:1400px; padding-top:25px;}
	.dateul{overflow:auto; height:50px; margin-left:460px;}
	.dateul li{float:left; margin-left:20px;}
	.dateul input[type=radio]{position:absolute;z-index:-1}
	.datebox label{display:block;width:72px;height:26px;font-size:14px;font-weight:bold;color:#fff;text-align:center;line-height:25px;text-decoration:none;cursor:pointer;background:#a5b0b6;}
	.dateformdiv{margin:0 0 0 490px;}
	#dateSearchBtn{margin-left: 20px; height: 30px; box-sizing: border-box; border-radius: 4px; border: 0px; width:80px;background: rgb(0,163,239); color:#fff}
	select[name=choiceOption]{width:100px; height:30px; box-sizing: border-box; border-radius: 4px; margin-left:10px;}
	.dateform{width:150px;}
	
	
	.maindiv{width:1500px; margin:30px auto; height:400px;}
	.searchDiv{display: inline-block; position: relative; left: 956px; top: -34px;}
	.searchDiv input{box-sizing: border-box; border-radius: 4px; height:35px;}
	.searchDiv input[type=text]{width:240px; border:1px solid gray; text-align:center;}
	.searchDiv input[type=button]{width:100px; border:1px solid gray; margin-left:10px;}
	.salesDiv{width:800px; display:inline-block; position:absolute; margin: 50px 0px 0px 140px;}
	.salesList{overflow:auto;}
	.salesList>li{float:left;border-bottom:1px solid gray; height:40px; line-height:40px; width:15%;}
	.salesList>li:nth-child(5n+1){width:15%;}
	.salesList>li:nth-child(5n+2){width:15%;}
	.salesList>li:nth-child(5n+3){width:20%; text-align:center;}
	.salesList>li:nth-child(5n+4){width:20%; text-align:center;}
	.salesList>li:nth-child(5n+5){width:25%; text-align:center;}
	
		/* 페이징 번호*/
	.page_wrap {text-align:center; font-size:0; height:30px; margin-top: 20px; position:relative;}
	.page_nation {display:inline-block; position:absolute; margin-left:378px; top:1170px;}
	.page_nation a {display:block; margin:0 3px; float:left; border:1px solid #e6e6e6; width:28px;
					height:28px; line-height:28px; text-align:center; background-color:#fff; font-size:13px;
					color:#999999; text-decoration:none;}
	.page_nation .arrow {border:1px solid #ccc;}
	.page_nation .pprev {background:#f8f8f8 url('img/page_pprev.png') no-repeat center center; margin-left:0;}
	.page_nation .prev {background:#f8f8f8 url('img/page_prev.png') no-repeat center center; margin-right:7px;}
	.page_nation .next {background:#f8f8f8 url('img/page_next.png') no-repeat center center; margin-left:7px;}
	.page_nation .nnext {background:#f8f8f8 url('img/page_nnext.png') no-repeat center center; margin-right:0;}
	.page_nation a.active {background-color:#42454c; color:#fff; border:1px solid #42454c;}
	
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script> 
<script>
	$(()=>{		
	 	$('.headerText').html('SALES STATUS');
		
		setInterval(function(){
			$('#rank-one').toggle();
		},800);	
		
		$('#chainjum-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#total-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#day-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		$('#top-go').click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		
		// 달력
		var dateFormat = "mm/dd/yy",
	      from = $( "#datefrom" ).datepicker({
	          defaultDate: "+1w",
	          changeMonth: true,
	          numberOfMonths: 3
	        }).on( "change", function() {
	          to.datepicker( "option", "minDate", getDate( this ) );
	        }),
	      to = $( "#dateto" ).datepicker({
	        defaultDate: "+1w",
	        changeMonth: true,
	        numberOfMonths: 3
	      }).on( "change", function() {
	        from.datepicker( "option", "maxDate", getDate( this ) );
	      });
	 
	    function getDate( element ) {
	      var date;
	      try {
	        date = $.datepicker.parseDate( dateFormat, element.value );
	      } catch( error ) {
	        date = null;
	      }
	 
	      return date;
	    }
	
	});// jqery
</script>
</head>
<body>
 	<%@ include file="/inc/adminTop.jspf" %>  
	<div class=top-banner-imgCon></div>
	<nav class="top-banner-nav">
	   <div class="tbn-menu1"><a href="adminSalesChart.jsp">매출현황</a></div>	   	   	   
	</nav>
	<main>		
		<div class="notice-con" id="nc-top">
			<div class="page-main-notice">
				<h3>매출확인</h3>
				<p>LEAF커피 매출 내용을 보실 수 있습니다.</p>
			</div>	
		</div>		
        <!-- search -->
        <div class="choiceouterdiv">
	 		<div class="choiceDatediv">
	 			<div class="datechoicelabel">
	 				<span>조회기간</span>
	 			</div> 		
	 			<ul class="dateul">
	 				<li>
		 				<span class="datebox">
		 					<input type="radio" name="dateSelect" id="today" onclick="dateSelect(0d)">
		 					<label for="today">당일</label>
		 				</span>
		 			</li>
		 			<li>
		 				<span class="datebox">
		 					<input type="radio" name="dateSelect" id="week" onclick="dateSelect(1w)">
		 					<label for="week">1주</label>
		 				</span>
		 			</li>
		 			<li>
		 				<span class="datebox">
		 					<input type="radio" name="dateSelect" id="onemonth" onclick="dateSelect(1m)">
		 					<label for="onemonth">1개월</label>
		 				</span>
		 			</li>
		 			<li>
		 				<span class="datebox">
		 					<input type="radio" name="dateSelect" id="threemonth" onclick="dateSelect(3m)">
		 					<label for="threemonth">3개월</label>
		 				</span>
		 			</li>
		 			<li>
		 				<span class="datebox">
		 					<input type="radio" name="dateSelect" id="sixmonth" onclick="dateSelect(6m)">
		 					<label for="sixmonth">6개월</label>
		 				</span>
		 			</li>		
	 			</ul>
	 			<div class="dateformdiv"><input type="text" name="datefrom" id="datefrom" class="dateform">~<input name="dateto" id="dateto" class="dateform">
	 				<select name="choiceOption">
	 					<option value="">--선택--</option>
	 					<option value="allProduct">전체상품</option>
	 					<option value="allfranchise">가맹점별</option>
	 				</select>
	 			</div>
	 			<div class="searchDiv">
	 				<input type="text" name="searchWord" placeholder="단어를 입력해주세요"/>
	 				<input type="button" value="search"/>
	 			</div> 			
	 		</div>
	 	</div>	
	 		
 		<div class="maindiv">
 			<canvas id="myChart" width="300" height="300" style="display:inline-block; margin:61px 0px 0px 200px;" ></canvas>
 			<div class="salesDiv">
 				<ul class="salesList">
 					<!-- if -->
 					<li>순위</li>
 					<li>상품번호</li> 					
 					<li>상품명</li>
 					<li>판매수량</li>
 					<li>총판매액</li>
 					<!-- if -->
<!--  				<li>순위</li>
 					<li>가맹번호</li>
 					<li>가맹점명</li>
 					<li>가맹점위치</li>
 					<li>총판매액</li> -->
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 					<li>1</li>
 					<li>21</li>
 					<li>아메리카노</li>
 					<li>321잔</li>
 					<li>323,320,000원</li>
 				</ul>
 			</div>
 			<!-- 페이징 -->
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
        
	</main>		
	<%@ include file="/inc/bottom3.jspf" %>
	<script>	
	// 그래프
            var context = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(context, {
                type: 'bar', // 차트의 형태
                data: { // 차트에 들어갈 데이터
                    labels: [
                        //x 축
                        '1','2','3','4'
                    ],
                    datasets: [
                        { //데이터
                            label: 'test1', //차트 제목
                            fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                            data: [
                                21,19,25,20,23,26,25 //x축 label에 대응되는 데이터 값
                            ],
                            backgroundColor: [
                                //색상
                                'rgba(0, 163, 239, 1)',
                                'rgba(0, 191, 241, 1)',
                                'rgba(0, 241, 218, 1)',
                                'rgba(38, 232, 179, 1)'
                            ],
                            borderColor: [
                                //경계선 색상
                            	'rgba(0, 163, 239, 1)',
                                'rgba(0, 191, 241, 1)',
                                'rgba(0, 241, 218, 1)',
                                'rgba(38, 232, 179, 1)'
                            ],
                            borderWidth: 1 //경계선 굵기
                        }
                    ]
                },
                options: {
                	legend:{
                		display:false
                	},
                	responsive: false,
                    scales: {
                        yAxes: [
                            {
                                ticks: {
                                    beginAtZero: true
                                }
                            }
                        ]
                    }
                }
            });
</script>	
</body>
</html>