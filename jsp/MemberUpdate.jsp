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
	<input type="hidden" name="job" value="update"/>
	<input type="submit" value="�˻�" />
</form>

<% MemberVO member = (MemberVO) request.getAttribute("member");
	if(member != null) { %>
	<h3>ȸ�� ���� ����</h3>
	<form action="memberUpdate.do" method="post">
	ID: < input type ="text" name="id" readonly value="${member.id}" <br>
	��й�ȣ : <input type ="password" name="passwd" value="${member.passwd}" > <br>
	�̸�: <input type="text" name="name" value="${member.mail}"> <br>
	E-Mail: <input type="text" name="mail" value="${member.mail}"> <br>
	<input type="submit" value="����">
	</form>
	
<%}else { %>
	${result }<p>
	
<%} %>

</body>
</html>