<%@ page import="com.dev.vo.MemberVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>

<title>ȸ�� ����</title>
</head>
<body>
<% ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
	if(!list.isEmpty()) { %>
	<table border="1">
		<tr><th>ID</th><th>��й�ȣ</th><th>�̸�</th><th>�̸���</th></tr>
		
		<% for(int i = 0; i<list.size(); i++){
			MemberVO member = list.get(i); %>
			
			<tr><td><%=member.getid() %></td>
				<td><%=member.getPasswd() %></td>
				<td><%=member.getName() %></td>
				<td><%=member.getMail() %></td>
				</tr>
				
			<% }
		} else{
		out.print("<h3>��ϵ� ȸ�� ������ �����ϴ�.</h3>");
		}
		%>
		</table>
		
<%@include file="home.jsp" %>		
</body>
</html>