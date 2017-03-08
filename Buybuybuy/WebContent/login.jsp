<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="check.jsp" method="post">
		username<input type="text" name="username" />
		<br/>
		<br/>
		password<input type="password" name="pwd" />
		<br/>
		<br/>
		<input type="submit" name="submit" value="submit" />
	</form>
	
	<%
		Cookie c = new Cookie("username",request.getParameter("username"));
		c.setMaxAge(24*3600);
		response.addCookie(c);
;	%>

	<%
		Cookie[] cookies = request.getCookies();
		
		for(Cookie b : cookies){
			if(b.getName().equals("username")){
				out.println(b.getValue());
			}
		}
	%>
</body>
</html>