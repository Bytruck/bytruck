<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>map</title>
<script type="text/javascript" lang="ko" charset="UTF-8"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=lCSVdReL0yZjRvKWpVR1&submodules=geocoder"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<div id="map" style="width: 100%; height: 400px;"></div>
<script>
$(function(){
	console.log("function")
	$.ajax({
		url: '<%=request.getContextPath()%>/coursedetail.bt',
		data : 'JSON',
		success : function(data) {
			var HOME_PATH = window.HOME_PATH || '.';
			var map = new naver.maps.Map('map', {
				center : new naver.maps.LatLng(37.3595704, 127.105399),
				zoom : 10
			});

			makeMarker(map, new naver.maps.LatLng(37.3595704, 127.105399), 0);
			makeMarker(map, new naver.maps.LatLng(37.3618025, 127.1153248), 1);
			makeMarker(map, new naver.maps.LatLng(37.3561936, 127.0983706), 2);
	
			function makeMarker(map, position, index) {
	
				var ICON_GAP = 31;
				var ICON_SPRITE_IMAGE_URL = HOME_PATH
						+ '/img/example/sp_pin_hd.png';
				var iconSpritePositionX = (index * ICON_GAP) + 1;
				var iconSpritePositionY = 1;
	
				var marker = new naver.maps.Marker({
					map : map,
					position : position,
					icon : {
						url : ICON_SPRITE_IMAGE_URL,
						size : new naver.maps.Size(26, 36), // 이미지 사이즈
						origin : new naver.maps.Point(
								iconSpritePositionX,
								iconSpritePositionY), // 스프라이트 이미지에서 클리핑 위치
						anchor : new naver.maps.Point(13, 36), // 지도 상 위치에서 이미지 위치의 offset 값
						scaledSize : new naver.maps.Size(395, 79)
					}
				});
				return marker;
			}
		}
	})
})
</script>
</body>
</html>