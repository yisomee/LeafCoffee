<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/inc/top.jspf" %>
<style>
	* {
		box-sizing: border-box;/*border포함 250*/
	}
	a:link, a:hover, a:visited {
		text-decoration: none;
		color: black;
	}
	ul,li{
		margin:0;
		padding:0;
		list-style-type:none;
	}
	.main {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.menu_title_container {
		display: flex;
		justify-content: center;
		border-bottom: 1px solid gray;
	}
	.menu_bar li{
		margin: 0 40px;
		line-height:50px;
		height:50px;
	    width: 120px;
	    text-align: center;
	}
	.imgwrap {
		width:250px;
		height:250px;
		display: flex;
		justify-content: center;
		overflow: hidden;
		border-radius: 100%;
		margin: 30px;
		position:relative;
	}
	.imgwrap:hover {
		border:3px solid rgb(0, 163, 239);
	}
	#img{
		width:250px;
		height:250px;
		border-radius: 100%;
	}
	.menuList{
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		width:1250px;
		margin-top:50px;
	}
	.imgtext{
		text-align:center;
		font-size:1.3em;
	}
	.imgtext2{
		font-size:0.8em;
		color:rgb(0, 163, 239);
	}
	.menu_title_container>li:hover{
		border-bottom:3px solid rgb(0, 163, 239);
		cursor: pointer
	}
	#img:hover{
	   cursor: pointer;
	   transform: scale(1.2); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
	   -o-transform: scale(1.2);
	   -moz-transform: scale(1.2);
	   -webkit-transform: scale(1.2);
	   transition: transform .35s;
	   -o-transition: transform .35s;
	   -moz-transition: transform .35s;
	   -webkit-transition: transform .35s;
	   transition: all 0.3s ease-in-out;
	}
	#img:not(:hover){
	   cursor: pointer;
	   transform: scale(1); /* 마우스 오버시 이미지 크기를 1.1 배만큼 확대시킨다. */
	   -o-transform: scale(1);
	   -moz-transform: scale(1);
	   -webkit-transform: scale(1);
	   transition: transform .35s;
	   -o-transition: transform .35s;
	   -moz-transition: transform .35s;
	   -webkit-transition: transform .35s;
	   transition: all 0.3s ease-in-out;
	}
	.menuList{
		display:flex;
	}
	.new{
		width:50px;
		height:50px;
		border-radius:100%;
		background-color:rgb(0, 163, 239);
		position:relative;
		top: -328px;
    	left: 43px;
   		color:white;
   		line-height:50px;
	    text-align: center;
	}
	.best{
		width:50px;
		height:50px;
		border-radius:100%;
		background-color:rgb(89, 65, 54);
		position:relative;
		top: -328px;
    	left: 43px;
   		color:white;
   		line-height:50px;
	    text-align: center;
	}
	/*head 이미지*/
   header{
   		height:330px;
   		position:relative;
   		}
   #headerText{
   		top:-100px;
   		font-size:3em;
   		color:white;
   		z-index:100;
   		opacity:0.5;
   		text-align:center;
   		position: relative;
   		}
   nav{
   		display:flex;
   		justify-content:center;
   		width:100%;
   		border-bottom:1px solid gray;
   		}
   nav>div{
   		padding:15px 40px;
   		}
	#head_img{
		background-image:url(https://www.baristapaulbassett.co.kr/images/menu/subVisual_food.jpg);
		z-index:-1;
		width:100%;
		height:330px;
	}
</style>
<script>
$(function(){
	$("#All").click(function(){
		$(".bakery").css('display','block');
		$(".cake").css('display','block');
	});
	
	$("#Bakery").click(function(){
		$(".bakery").css('display','block');
		$(".cake").css('display','none');
	});
	$("#Cake").click(function(){
		$(".cake").css('display','block');
		$(".bakery").css('display','none');
	});
	$("#headerText").animate({
	       top: "-160px", opacity:1
	       }, 1200,);
	
	
});
</script>
<header>
<div id="head_img"></div>
   <div id="headerText">FOOD</div>
</header>
<div class="main">
	<div class="menu_bar">
		<ul class="menu_title_container">
			<li id="All">All</li>
			<li id="Bakery">Bakery</li>
			<li id="Cake">Cake</li>
		</ul>
	</div>
	<div>
		<ul class="menuList">
			<li class="bakery"><div class="imgwrap"><a href="/suyeong/leaf/leaf_menu_detail.jsp"><img src="img/Croiffle.png" id="img"/></a></div>
				<div class="imgtext">크로플<br/><span class="imgtext2">Croiffle</span></div>
			</li>
			<li class="bakery"><div class="imgwrap"><img src="img/MilkCreamBread.png" id="img"/></div>
				<div class="imgtext">우유크림빵<br/><span class="imgtext2">Milk Cream Bread</span></div>
			</li>
			<li class="bakery"><div class="imgwrap"><img src="img/Madeleine.png" id="img"/></div>
				<div class="imgtext">마들렌<br/><span class="imgtext2">Madeleine</span></div>
				<div class="best">best</div>
			</li>
			<li class="bakery"><div class="imgwrap"><img src="img/Cannele.png" id="img"/></div>
				<div class="imgtext">까눌레<br/><span class="imgtext2">Cannele</span></div>
			</li>
			<li class="cake"><div class="imgwrap"><img src="img/DarkHazelnutCake.png" id="img"/></div>
				<div class="imgtext">다크 헤이즐넛 케이크<br/><span class="imgtext2">Dark Hazelnut Cake</span></div>
				<div class="new">new</div>
			</li>	
		</ul>
	</div>
</div>	
<%@ include file="/inc/bottom.jspf" %>