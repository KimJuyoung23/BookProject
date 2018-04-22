<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="beans.BookDAO"/>
<jsp:useBean id="dto" class="beans.BookDTO">	
	</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Modify</title>
<script type="text/javascript">
window.onload = function() {
	document.getElementById("cancel").onclick = function(){
		location.href="index.jsp";
	}
}
</script>
</head>
<body>
	<%
	String num = request.getParameter("num");
	dto=dao.getDataByNum(Integer.parseInt(num));
	%>		
<form action=modifyProc.jsp method=get>
		<table border=1 align=center>
			<tr>
				<td align=center colspan=3>Book Information
			</tr>
			<tr>
				<td>Number:
				<td><input type=text id=id name=id readonly><%=session.getAttribute("num")%>
			</tr>
			<tr>
				<td>Name:
				<td><input type=text name=name id=name><%=session.getAttribute("name")%>
			</tr>
			<tr>
				<td>Publisher:
				<td><input type=text name=publisher id=publisher><%=session.getAttribute("publisher")%>
			</tr>
			<tr>
				<td>Writer:
				<td><input type=text name=writer id=writer> <%=session.getAttribute("writer")%>
				<input type=text id=passwordCheckResult>
			</tr>
			<tr>			
				<td align="center" colspan=3>
					<input type=submit value=modify id=regitComplete> 
			</tr>
		</table>
	</form>

</body>
</html>