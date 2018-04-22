<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*"%>
<jsp:useBean id="dao" class="beans.BookDAO"/>
<jsp:useBean id="dto" class="beans.BookDTO">
	<jsp:setProperty name="dto" property="*"/>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int result = dao.insertNewBook(dto); 
%>
	<script type="text/javascript">
	if(<%=result%> > 0){
		alert('데이터 입력에 성공했습니다.')
	}else{
		alert('데이터 입력에 실패했습니다.')
	}
	location.href = 'index.jsp';
	</script>
</body>
</html>