<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>�˻� ���</title>
</head>
<body>
	<h3>�˻� ���</h3>
	
	<%
		String result = (String) request.getAttribute("result");
		if(result !=null) {
		out.print(result+"<p>");
		}else{
		%>
		
			<h3>
			${member.id }/ ${member.passwd }/ ${member.name } /${member.mail }
			</h3>
		<%} %>
		
		<%include file="home.jsp" %>
		
</body>
</html>