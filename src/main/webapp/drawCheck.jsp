<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_name = request.getParameter("userName");
		String u_email = request.getParameter("userMAIL");
		
		String sql = "DELETE FROM members WHERE id=?";
		
		PreparedStatement ptmt = null;
		
		ptmt = conn.prepareStatement(sql);

		ptmt.setString(1, u_id);
				
		int count = ptmt.executeUpdate(sql); // 1이 반환되면 성공
		
		
		if(count == 1) {
			response.sendRedirect("drawSuccess.jsp");
		}else{
			response.sendRedirect("drawErr.jsp");
		}
		
		
		ptmt.close();
		conn.close();

	%>

</body>
</html>