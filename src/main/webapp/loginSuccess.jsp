<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<body>
	Home > 관리자 로그인
	<hr>
	<%
		request.setCharacterEncoding("utf-8");

	String u_id = request.getParameter("userID");
	String u_pw = request.getParameter("userPW");
	
	if(u_id.equals("space") && u_pw.equals("123456")){
		session.setAttribute("adminId", u_id);
		session.setAttribute("adminPw", u_pw);
	
		out.println("새로운 세션 생성 성공! <br>");
		out.println("관리자 {"+ u_id +"}님이 입장하였습니다. <p>");
	} else {
		response.sendRedirect("loginErr.jsp");
	}
	
	%>
	
	<table>
		<tr> 
			<td>
				<form action="memberlist.jsp" method="post">
					<input type="submit" value="◀ 등록 회원 관리하기">
				</form>
			</td>
			<td>
			<form action="logout.jsp">
					<input type="submit" value="로그아웃 ▶">
				</form>
			</td>
		</tr>
	</table>
	
</body>
</html>