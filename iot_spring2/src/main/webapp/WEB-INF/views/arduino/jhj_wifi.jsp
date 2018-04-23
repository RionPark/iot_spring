<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>더조은 IOT</title>
</head>

<body>
	<center>
		<br>
		<font size=4 face="맑은 고딕" color="GRAY">JHJ : 문희주,김형수,홍경철</font><br>
		<font size=6 face="맑은 고딕" color="LIGHTBLUE">CONTROLLER</font>
	</center>
	<br>
	<br>

	<center>
		<table>
			<tr>
				<th></th>
				<th><center>
						<button class="btn btn-default led" id="11"
							style="height: 100; width: 130" value="52">
							<font size=4>전진</font>
						</button>
					</center></th>
				<th></th>
			</tr>
			<tr>
				<th><center>
						<button class="btn btn-default led" id="13"
							style="height: 100; width: 130" value="54">
							<font size=4>좌회전</font>
						</button>
					</center></th>
				<th><center>
						<button class="btn btn-danger led" id="12"
							style="height: 100; width: 130" value="53">
							<font size=4>중지</font>
						</button>
					</center></th>
				<th><center>
						<button class="btn btn-default led" id="14"
							style="height: 100; width: 130" value="55">
							<font size=4>우회전</font>
						</button>
					</center></th>
			</tr>
		</table>
	</center>
	<br>
	<center>
		<button class="btn btn-primary led" id="15"
			style="height: 100; width: 130" value="56">
			<font size=4>회전</font>
		</button>
	</center>

	<script>
		$(document).ready(function() {
			$("button").click(function() {
				var num = this.value * 1;
				$.ajax({
					url : "http://jiot.iptime.org:8002",
					data : {
						"pin" : num
					},
					timeout : 5000,
					dataType : "json",
					success : function(res) {
						console.log(res);
					},
					error : function(res) {
						console.log(res);
					}
				});
			})
		});
	</script>
</body>
</html>