<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUY</title>

</head>
<body>
	<%!
		int a=0;
		
	%>
	<%
		a=a+1;
	%>
	
	<form action="pay.jsp" method="post">
	<button type="button" onclick="location='login.jsp'">login</button>
	<br/>
	<%=a %>
	<br/>
	<table>
		<tr>
			<td>商品1</td>
			<td><input type="text" name="s1"/>个</td>
		</tr>
		<tr>
			<td>商品2</td>
			<td><input type="text" name="s2"/>个</td>
		</tr>
		<tr>
			<td>商品3</td>
			<td><input type="text" name="s3"/>个</td>
		</tr>
	</table>
	<br/>
	<input type="submit" value="购买"/>
	</form>
</body>
</html>