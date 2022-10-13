<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
	<script type="text/javascript">
	function join() {
		var f = document.loginForm;
		
		if(f.userID.value.lenght < 2 || f.userID.value.lenght > 16){
			alert("아이디는 2~16자 이내로 입력해야 합니다.");
			f.userID.focus();
			return false;
		} else if (f.userPW.value.lenght < 6) {
			alert("아이디는 2~16자 이내로 입력해야 합니다.");
			f.userPW.focus();
			return false;
		} else { 
			return true;
		}
	}
	</script>	
</head>
<body>
	Home > 회원가입
	<hr>
		<form action="loginSuccess.jsp" name="loginForm" method="post" onsubmit="return loginCheck()">
			<fieldset style="width: 260px">  
				<legend>관리자 로그인</legend>   <!--  테두리  -->
				아이디 : <br>
				<input type="text" name="userID"> <br><br>
				비밀번호 : <br>
				<input type="password" name="userPW"> <br><br>
				
				<input type="submit" value=" 로그인 ▶▶"> 
				<br><br>
			</fieldset>
		</form>
	
</body>
</html>