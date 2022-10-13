<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String driverName="com.mysql.jdbc.Driver";   // 어디꺼를 쓰는지 작성
		String url ="jdbc:mysql://localhost:3306/serverdb";      // 기본 주소 작성
		String user = "root";    // 관리자 계정
		String pass = "12345";    // MySql 비밀번호
		
		Connection conn = null;
		
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, user, pass);
		
	%>

</body>
</html>