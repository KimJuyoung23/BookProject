<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="beans.BookDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>	
	window.onload = function() {
		document.getElementById("back").onclick = function(){
			location.href="index.jsp";
		}
	}		
</script>
</head>
<body>
<form action=returnBackProc.jsp method=get>
	<table border=1 align=center>
		<tr>
			<td align=center colspan=2>Insert Number of which you want to return back the book
		</tr>
		<tr align=center>
			<td><input type=text id=num name=num>	
			<input type=submit value="return back this book" id=returnBack>
			<input type=button value=back id=back>
		</tr>
		<%
			BookDAO manager = new BookDAO();
			manager.outPut();
		%>
	</table>
</form>
</body>
</html>