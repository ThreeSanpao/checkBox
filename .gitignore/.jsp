<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkBox</title>
<script src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//selectAll
		$("#all").click(function(){
			if(this.checked){
				$(":checkbox").prop("checked",true);
			}else{
				$(":checkbox").prop("checked",false);
			}
		});
		//selectAll Button
		$("#selectAll").click(function(){
			$(":checkbox,#all").prop("checked",true);
		});
		//unSelect
		$("#unSelectAll").click(function(){
			$(":input,#all").prop("checked",false);
		});
		//reverse
		$("#reverse").click(function(){
			$(":input,#all").each(function(){
				$(this).prop("checked",!$(this).prop("checked"));
			});
		});
	});
</script>
</head>
<body>
<ul id="list">
	<li><label><input type="checkbox" value="1"/>1銆佹椂闂撮兘鍘诲摢鍎夸簡</label></li>	
	<li><input type="checkbox" value="2"/>2銆佸憡鐧芥皵鐞?/li>
	<li><input type="checkbox" value="3"/>3銆佹氮璐?/li>
	<li><input type="checkbox" value="4"/>4銆丄ll of Me</li>
	<li><input type="checkbox" value="5"/>5銆丗ancy</li>
	<li><input type="checkbox" value="6"/>6銆丷ude</li>
</ul>
<input type="checkbox" id="all"/>
<input type="button" value="鍏ㄩ€? class="btn" id="selectAll"/>
<input type="button" value="鍏ㄤ笉閫? class="btn" id="unSelectAll"/>
<input type="button" value="鍙嶉€? class="btn" id="reverse"/>
<input type="button" value="鑾峰緱閫変腑鐨勬墍鏈夊€? class="btn" id="getValue"/>

</body>
</html>
