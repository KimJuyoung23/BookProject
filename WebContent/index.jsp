<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Book Index</title>
<script type="text/javascript">
	window.onload=function(){
		document.getElementById("loan").onclick = function(){
			location.href = "loan.jsp"
		}
		document.getElementById("returnBack").onclick = function(){
			location.href = "returnBack.jsp"
		}
		document.getElementById("insert").onclick = function(){
			location.href = "insert.jsp"
		}
		document.getElementById("modify").onclick = function(){
			location.href = "modify.jsp"
		}
		document.getElementById("delete").onclick = function(){
			location.href = "delete.jsp"
		}
	}
</script>
</head>
<body>
<form>
	<table border=1 align=center>
		<tr>
			<td align=center colspan=5><font size=3>Book Menu</font>
		</td>
		<tr>
			<td align=center>
			<input type=button value=Loan id=loan>
			<input type=button value='Return Back' id=returnBack>
			<input type=button value=Insert id=insert>
			<input type=button value=Modify id=modify>
			<input type=button value=Delete id=delete>
	</table>	
</form>
</body>
</html>