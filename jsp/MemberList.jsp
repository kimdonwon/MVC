<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
<html>
<head>
<title>���ڵ� ǥ��</title>
</head>
<body>
<h2>member ���̺��� ���ڵ� ǥ��</h2>
<table border="1">
<tr>
	<td width="100">���̵�</td>
	<td width="100">�н�����</td>
	<td width="100">�̸�</td>
	<td width="250">��������</td>
	</tr>
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
	String jbcURL="jdbc:oracle:thin:@localhost:1521:xe";
	String dbId="scott";
	String dbPass="tiger";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
	String sql = "select + from members";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	while(rs.next()) {
	String id=rs.getString("id");
	String passwd=rs.getString("passwd");
	String name=rs.getString("name");
	Timestamp register=rs.getTimestamp("reg_date");
%>
	<tr>
	<td width="100"><a href="MemberSelect.jsp?id=<%=id %>"<%=id %></a></td>
	<td width="100"><%=passwd %></td>
	<td width="100"><%=name %></td>
	<td width="250"><%=register.toString() %></td>
	</tr>
<%}
	}
	catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs !=null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt!=null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn!=null)
			try{conn.close();}catch(SQLException sqle){}
	}
	%>
	</table>
	<br>
	<a href="MemberInsertForm.jsp">���ڵ� �߰�</a>
</body>
</html>