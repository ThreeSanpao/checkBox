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
			$(":checkbox:not(#all)").prop("checked",true);
		});
		//unSelect
		$("#unSelectAll").click(function(){
			$(":checkbox").prop("checked",false);
		});
		//reverse
		$("#reverse").click(function(){
			$(":checkbox:not(#all)").each(function(){
				$(this).prop("checked",!$(this).prop("checked"));
			});
		});
		//getValue
		$("#getValue").click(function(){
			var values=new Array;
			$(":checkbox:checked:not(#all)").each(function(i){
				values[i]=$(this).val();
			});
			alert(values);
		});
	});
</script>
</head>
<body>
<ul id="lis">
	<li><label><input type="checkbox" value="1"/>1、时间都去哪儿了</label></li>	
	<li><input type="checkbox" value="2"/>2、告白气球</li>
	<li><input type="checkbox" value="3"/>3、浪费</li>
	<li><input type="checkbox" value="4"/>4、All of Me</li>
	<li><input type="checkbox" value="5"/>5、Fancy</li>
	<li><input type="checkbox" value="6"/>6、Rude</li>
</ul>
<input type="checkbox" id="all"/>
<input type="button" value="全选" class="btn" id="selectAll"/>
<input type="button" value="全不选" class="btn" id="unSelectAll"/>
<input type="button" value="反选" class="btn" id="reverse"/>
<input type="button" value="获得选中的所有值" class="btn" id="getValue"/>

</body>
</html>