<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>ȸ������</h3>
	${error}
	<form action="memberInsert.do" method="post">
		ID:<input type="text" name="id"><br>
		��й�ȣ:<input type="password" name ="password"><br>
		�̸�:<input type="text" name ="name"><br>
		E-Mail:<input type="text" name ="mail"><br>
		<input type = "submit" value="����">
	</form>
</body>
</html>
