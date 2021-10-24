<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
ul,li{
 margin: 0;
 padding: 0;
 list-style: none;
 
}
#map {
	width: 81%;
    height: 700px;
    border: 1px solid gray;
    left: 18%;
    top: 14%;
    margin: 100px 0px;
}
#mapList{
	position: absolute;
    left: 43px;
    top: 220px;
    background: white;
    border-radius: 2px;
    width: 300px;
    border: 1px solid #ddd;
    height: 701px;
    opacity: 0.8;
        font-size: 0.8rem;
}
.searchstore{
	height: 60px;
    line-height: 40px;
	font-size: 1.5rem;
	
	text-align: center;
	padding-top:10px;
}
#searched>li{
    height: 80px;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}
input[type="text"]{
	width: 90%;
    height: 30px;
    border: none;
    border-radius: 2%;
}
.searchInput{
	height: 60px;
    border: 1px solid gray;
    line-height: 55px;
    font-size: 0.9rem;

}
.searchResult{
	font-size: 1em;
}
.searchInput img{
position: absolute;
    top: 60px;
    right: 0px;
    }
</style>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJSzwXGvvtIypU1a6qlp-Vw0hY-4ZQ_I0&callback=initMap">
	
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	// https://cloud.google.com/maps-platform/
	// https://maps.googlepis.com/
	//위도, 경도
	var latitude = 37.5729503;
	var longitude = 126.9793578;

	function initMap() {
		var myCenter = new google.maps.LatLng(latitude, longitude);
		// 지도를 그릴 때 필요한  기타점을 JSON형식의 데이터로 생성한다.							
		var mapProperty = {
			center : myCenter,
			zoom : 17,//0~21까지의 값을 사용한다. 숫자가 클수록 확대된다.
			mapTypeId : google.maps.MapTypeId.ROADMAP
		//지도종류(ROADMAP, HYBRID, STEELITE, TERRAIN)
		};
		//지도를 표시할 곳	
		var map = new google.maps.Map(document.getElementById("map"), mapProperty);
		//마커표시
		 var geocoder = new google.maps.Geocoder();
 
            // submit 버튼 클릭 이벤트 실행
           
                console.log('submit 버튼 클릭 이벤트 실행');
 
                // 여기서 실행
                geocodeAddress(geocoder, map);
           
 
            /**
             * geocodeAddress
             * 
             * 입력한 주소로 맵의 좌표를 바꾼다.
             */
            function geocodeAddress(geocoder, resultMap) {
                console.log('geocodeAddress 함수 실행');
 
                // 주소 설정
//                 var address = document.getElementById('address').value;
                var address = '서울특별시 강남구 역삼로 310 (역삼동)1522-3232';
 
                /**
                 * 입력받은 주소로 좌표에 맵 마커를 찍는다.
                 * 1번째 파라미터 : 주소 등 여러가지. 
                 *      ㄴ 참고 : https://developers.google.com/maps/documentation/javascript/geocoding#GeocodingRequests
                 * 
                 * 2번째 파라미터의 함수
                 *      ㄴ result : 결과값
                 *      ㄴ status : 상태. OK가 나오면 정상.
                 */
                geocoder.geocode({'address': address}, function(result, status) {
                    console.log(result);
                    console.log(status);
 
                    if (status === 'OK') {
                        // 맵의 중심 좌표를 설정한다.
                        resultMap.setCenter(result[0].geometry.location);
                        // 맵의 확대 정도를 설정한다.
                        resultMap.setZoom(18);
                        // 맵 마커
                        var marker = new google.maps.Marker({
                            map: resultMap,
                            position: result[0].geometry.location
                        });
 
                        // 위도
                        console.log('위도(latitude) : ' + marker.position.lat());
                        // 경도
                        console.log('경도(longitude) : ' + marker.position.lng());
                    } else {
                        alert('지오코드가 다음의 이유로 성공하지 못했습니다 : ' + status);
                    }
                });
            }


	}
</script>
</head>
<body>
<%@ include file="/inc/top.jspf" %>
<div id='map'>
</div>
<div id='mapList'>
	<ul>
		<li class="searchstore">매장 찾기</li>
		<li class="searchInput"><input type="text" placeholder="매장명 또는 주소 입력"><img src="img/searchBtn.png"></li>
		<li class="searchstore searchResult">(검색 결과 5개)</li>
		<li>
			<ul id="searched">
				<li>무교로<br/>
				서울특별시 중구 무교로 15(무교동)<br/>
				1522-3232
				</li>
				<li>한국 프레스 센터<br/>서울특별시 중구 세종대로 124(태평로1가)<br/>1522-3232</li>
				<li>무교동<br/><br/></li>
				<li>시청<br/><br/></li>
				<li>종로<br/><br/></li>
			</ul>
		</li>
	</ul>
</div>
<%@ include file="/inc/bottom3.jspf" %>
</body>
</html>