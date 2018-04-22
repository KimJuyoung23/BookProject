<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementById("back").onclick = function(){
			location.href = "index.jsp";
		}
	}
</script>
</head>
<body>
<form action=insertProc.jsp method=get>
	<table border=1 align=center>
		<tr>
			<td align=center colspan=2>Book Information
		</tr>
		<tr>
			<td>Name:
			<td><input type=text placeholder="New Book" name=name>
		</tr>
		<tr>
			<td>Publisher:
			<td><input type=text placeholder="publisher" name=publisher>
		</tr>
		<tr>
			<td>Writer:
			<td><input type=text placeholder="Writer" name=writer>
		</tr>
		<tr>
				<td align=center colspan=2>
				<input type=submit value=submit>
				<input type=button value=back id=back>
				
			</tr>
	</table>

</form>
</body>
</html>