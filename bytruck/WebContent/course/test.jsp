<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=lCSVdReL0yZjRvKWpVR1&submodules=geocoder"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<div id="map" style="width: 100%; height: 400px;"></div>

	<script>
		var position = new naver.maps.LatLng(37.3595704, 127.105399);
		var menuLayer = $('<div style="position:absolute;z-index:10000;background-color:#fff;border:solid 1px #333;padding:10px;display:none;"></div>');

		var map = new naver.maps.Map('map', {
			center : position,
			zoom : 10
		});
		
		var marker = new naver.maps.Marker({
			position : position,
			map : map
		});
		
		map.getPanes().floatPane.appendChild(menuLayer[0]);

		naver.maps.Event.addListener(map, 'click', function(e) {
			marker.setPosition(e.coord);

			var coordHtml = 'Coord: ' + e.coord;//위치 표시 (위도,경도) -- 디비에 넣고, 확인후 지우기
			
			console.log(e.coord);
			
			menuLayer.show().css({
				left : e.offset.x,//지도상위도
				top : e.offset.y
			}).html(coordHtml);
			
		});

		naver.maps.Event.addListener(map, 'mousedown', function(e) {//스크롤 움직일때 정보창 숨기기(지워도 될거같음)
			menuLayer.hide();
		});
		
	</script>
</body>
</html>