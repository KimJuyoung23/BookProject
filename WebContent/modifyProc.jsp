<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	int result = dao.modifyBookData(dto);
%>
	<script>
	if(<%=result%> > 0){
		alert('Success')
	}else{
		alert('Fail')
	}
	location.href='index.jsp'
</script>

</body>
</html>