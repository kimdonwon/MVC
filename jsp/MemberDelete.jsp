<%@ page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>����</title>
</head>
<body>
<h3>���� ���� �˻�</h3>

${error}
<form action ="memberSearch.do" method="post">
	ID: <input type = "text" name="id" />
	<input type="submit" value="�˻�" />
	<input type="hidden" name="job" value="update"/>
</form>

<% MemberVO member = (MemberVO) request.getAttribute("member");
	if(member != null) { %>
	<h3>�˻� ���� ���</h3>
	${member.id } /${member.passwd }/${member.name}/${member.id } <p>
	
	<form action="memberDelete.do" method="post">
		<input type="hidden" name="id" value="${member.id }" />
		<input type="submit" value="����"/>
		</form>

<%} else{ %>
	${result} <p>
	
<%} %>
</body>
</html>