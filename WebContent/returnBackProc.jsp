<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="beans.BookDAO"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String num = request.getParameter("num");	
	int result = dao.returnBack(Integer.parseInt(num));
%>
	<script>
	if(<%=result%> > 0){
		alert('Success to return back')
	}else{
		alert('Fail')
	}
	location.href='updateData.jsp'
	</script>
</body>
</html>