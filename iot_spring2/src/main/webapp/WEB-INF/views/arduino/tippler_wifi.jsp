<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
<script src="/resources/js/jquery-3.2.1.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>더조은 JAVA기반 IOT</title>
</head>

<body>
<center>
<br><font size=4 face="맑은 고딕" color="GRAY">Tippler : 최재열,김연희,한지훈</font><br>
<font size=6 face="맑은 고딕" color="LIGHTBLUE">LED</font></center><br><br>


<center><button class="btn btn-default led" id="11" style="height:100;width:130"><font size=4>White Light</font></button></center><br>
<center><button class="btn btn-danger led" id="12" style="height:100;width:130"><font size=4>Red Light</font></button></center><br>
<center><button class="btn btn-primary led" id="13" style="height:100;width:130"><font size=4>Blue Light</font></button></center><br>
<center><button class="btn btn-default led" id="14" style="height:100;width:130"><font size=4>Turn Off</font></button></center>

<script>
function callBack(data){	
	if(data.onOff=="11"){
		alert("흰색불이 켜졌습니다.");
	}else if(data.onOff=="12"){
		alert("빨간불이 켜졌습니다.");
	}else if(data.onOff=="13"){
		alert("파란불이 켜졌습니다.");
	}
	
}

$(document).ready(function(){
	$(".led").click(function(){
		var p = $(this).attr('id');
		$.ajax({
			url : "http://jiot2.iptime.org:8001",
			data : {pin:p},
			success : callBack,
			dataType : "json"
		})	
	})	
})


</script>
</body>
</html>