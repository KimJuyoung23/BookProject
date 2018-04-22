<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Delete Book</title>
</head>
<body>
<form action=deleteProc.jsp method=post>
		<table border=1 align=center>
			<tr>
				<td colspan=2 align=center>Insert Number
			</tr>
			<tr>
				<td><input type=text id=num>
			</tr>
			<tr>
				<td align=center><input type=submit value=Delete id=delete>
				<input type=button value=Cancel id=cancel>
			</tr>
		</table>
	</form>
	<script>
	document.getElementById("cancel").onclick=function(){
		location.href="index.jsp";
	}
	</script>

</body>
</html>