<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>��ȸ</title>
</head>
<body>
<h3>ȸ�� ���� �˻�</h3>
${error}
<form action = "memberSearch.do"method="post">
	ID:<input type="text" name ="id"/>
	<input type="submit" value="�˻�"/>
	<input type ="hidden" name="job" value="search"/>
</form>
</body>
</html>
