
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/inc/top.jspf" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);



 a:link {text-decoration: none;}

a:hover{text-decoration:none;
		color:rgb(0, 163, 239);
}

ul,li{list-style:none;
		margin:0;
		padding:0;
}

.formdiv{
		width:350px;
		margin: 0 auto;
	}
	

.containers{
		width:1400px;
		margin:0 auto;
		padding-top: 200px;
	
	}
	.nowrapdiv{
		font-size: 0.9rem;
	}
	
.label{
		display:inline-block;
		text-align: center;	
		
		
	}

	.loginPage>li{
	 width:100%;
	 height: 40px;
   	margin-bottom: 25px;
	}
.loginPage input:focus{
	border: 1px solid rgb(0, 163, 239);
	border-bottom: 1px solid rgb(0, 163, 239);
	border-radius: 5px;
}	


.inputBox{
		width: 100%;
		height:40px;
		border:none;border-right:0px; border-top:0px; border-left:0px; border-bottom:1px solid;
		outline:none;
	}
	
#joinbtn{
		
    	padding-top: 10px;
    
	}
.join{
	background-color:white;
	
		height:50px;
		border-radius: 5px;
		transition-duration: 0.3s;
		border:1px solid rgb(0, 163, 239);
		font-size: 1.3em;
		color:rgb(0, 163, 239);
		opacity: 0.8;
		font-family: 'Hanna', fantasy;
	
      
	
		width:350px;
		
	}
.anotherlogindiv{
	margin-top:70px;
	font-weight: 600;
}
	
.anotherlogin{
	margin-top:10px;
	width:350px;
	height:50px;
	line-height:50px;
	border-radius: 2px;
	text-align: center;
	color:black;
}

#naverlogin{
	background-color: rgb(3,199,90);
	color: white;
}

#kakaologin{
	background-color: rgb(242,220,1);
	}
	
#googlelogin{
	background-color: rgb(64,129,236);
	color: white;
	}
	#googlelogin>img, #naverlogin>img, #kakaologin>img{
	    height: 46px;
    margin: 2px;
    background: white;
    float: left;
	}
	.center {
	width: 1100px;
	height: 300px;
	display: flex;
	align-items: center; /*div박스들 축중앙으로*/
	justify-content: center; /*위치한 자리에서 가운데정렬*/
	margin: 0 auto;
	position: absolute;
	top: 8%;
	left: 397px;
	z-index: -1;
}

.one, .two, .three, .four { /*로딩할때 leat 글씨 날라오게 하는거.*/
	margin-left: 150px;
	margin-right: 150px;
	font-size: 8rem;
	opacity: 0;
	color: rgb(0, 163, 239);
}
.join:hover { /*마우스 오버시 메뉴색깔 분홍색으로 변하는거*/
	box-shadow: inset 25em 0 0 0 rgb(0, 163, 239);
	color: white;
	border-color: rgb(0, 163, 239);
}
.search{

	display:flex;
	justify-content: center;
	padding-top: 12px;
    font-size: 0.8rem;
    
}
.search li{
	color: gray;
	padding: 0 7px 0 7px;
}
.search>a{

    border-right: 1px solid #ddd;
}
.search>a:last-child{
border-right:none;
}
.footer_copy, .footer_link{
display: flex;
    justify-content: center;
}
.footer_link{
	margin-bottom: 9px;
}
.footer{
	padding: 80px 0 32px;
    box-sizing: border-box;
    font-size:0.7rem;
    color: gray;
}
.footer_link>li{
	padding: 0 5px 0 5px;
    border-right: 1px solid #ddd;
}
.footer_link>li:last-child{
border-right:none;
}
.footer_link span{
	color: gray;
}
.blind{
	color: rgb(0, 163, 239);
	font-weight: 800;
}
.footer_copy>span{
	padding: 0 5px 0 5px;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
$(()=>{ /*맨처음 글자 날라오는 애니메이션*/
    $('.one').animate({marginLeft:"0px",marginRight:"0px",opacity:1,fontSize:"5rem"},500)
    .delay(500).animate({marginLeft:"30px",marginRight:"0px" ,opacity:1,fontSize:"6rem"},300);
    $('.two').animate({marginLeft:"0px",marginRight:"0px",opacity:1,fontSize:"5rem"},500)
    .delay(500).animate({marginLeft:"30px",marginRight:"0px" ,opacity:1,fontSize:"6rem"},300);
    $('.three').animate({marginLeft:"0px",marginRight:"0px",opacity:1,fontSize:"5rem"},500)
    .delay(500).animate({marginLeft:"30px",marginRight:"0px" ,opacity:1,fontSize:"6rem"},300);
    $('.four').animate({marginLeft:"0px",marginRight:"0px",opacity:1,fontSize:"5rem"},500)
    .delay(500).animate({marginLeft:"30px",marginRight:"0px" ,opacity:1,fontSize:"6rem"},300);
    
    $('.main')
    .delay(2300)
    .queue(function (next) { 
    	$(this).css('display', 'block'); 
    });
});
</script>
</head>
<body>
<div class="center">
	<div class="one">l</div>
	<div class="two">e</div>
	<div class="three">a</div>
	<div class="four">f</div>
</div>
<div class="nowrapdiv">
<div class="containers">
	<div class="formdiv">
		<form method="post"action="/myapp/loginOk">
		<ul class="loginPage">
			<li><input placeholder=" 아이디" type="text" name="userid" id="userid" class="inputBox"/></li>
			<li><input placeholder=" 비밀번호" type="password" name="userpwd" id="userpwd" class="inputBox"/></li>
			<input type="submit" value="로 그 인" class="join" />
		</ul>
		<ul class="search">
			<a href="/myapp/idOk"><li>아이디찾기</li></a>
			<a href="/myapp/pwdOk"><li>비밀번호 찾기</li></a>
			<a href="/myapp/register"><li>회원가입</li></a>
		</ul>
		<div class="anotherlogindiv">
			<a href="#"><div class="anotherlogin" id="kakaologin"><img src="img/kakao_logo.png">카카오 계정으로 로그인</div></a>
			<a href="#"><div class="anotherlogin" id="naverlogin"><img src="img/naver_logo.png">네이버 아이디로 로그인</div></a>
			<a href="#"><div class="anotherlogin" id="googlelogin"><img src="img/google_logo_2_littledeep.png">Google 계정으로 로그인</div></a>
		</div>

		</form>
	</div><!-- formdiv -->
</div><!-- container -->
</div>

<div class="footer">
        <div class="footer_inner">
            <!--[주]고객센터,제휴문의,서비스안내-->
            <ul class="footer_link" id="footer_link">
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/service.html"
                       id="fot.agreement"><span class="text">이용약관</span></a></li>
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/privacy.html"
                       id="fot.privacy"><span class="text">개인정보처리방침</span></a></li>
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/disclaimer.html"
                       id="fot.disclaimer"><span class="text">책임의 한계와 법적고지</span></a></li>
                <li><a target="_blank" class="footer_item"
                       href="https://help.naver.com/support/service/main.nhn?serviceNo=532" id="fot.help"><span
                                class="text">회원정보 고객센터</span></a></li>
            </ul>
            <div class="footer_copy">
                    <span class="footer_logo"><span class="blind">LEAF</span></span>
                <span class="text">Copyright</span>
                <span class="corp">© leaf Corp.</span>
                <span class="text">All Rights Reserved.</span>
            </div>
        </div>
    </div>
</body>
</html>