<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//session.invalidate();	 // 한번에 전부 지우는 방법
		String u_id = (String)session.getAttribute("adminId");
		String u_pw = (String)session.getAttribute("adminPw");
		
		session.removeAttribute("adminId");
		session.removeAttribute("adminPw");
		
		if(session.getAttribute("adminId")==null) {
			out.println("로그아웃 성공!");
		}
	%>


 	<br>
 	<c:if test="${sessionScope.adminID == null }">
 		로그아웃 성공!
	</c:if>
	<br>
	Home > 로그아웃
	
	<hr>
	세션을 종료 후 로그아웃을 수행하였습니다.
	그동안 수고 많으셨습니다.
	
	<form action="main.jsp" name="err_form" method="post">
		<p>
		<input type="submit" value="메인화면으로 이동하기 ▶">
	</form>
	

</body>
</html>