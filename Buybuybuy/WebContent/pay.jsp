<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int num1 = 0;
		int num2 = 0;
		int num3 = 0;
		
	if (request.getParameter("s1") == null) {
			num1 = num1 + 0;
    	}
    else{
    	session.setAttribute("num1", num1 + Integer.parseInt(session.getAttribute("s1").toString()));
    }
	
	%>
	
	<table>
		<tr>
			<td>商品1:</td>
			<td><%=session.getAttribute("num1")%>个</td>
		</tr>
		<tr>
			<td>商品2:</td>
			<td><%=session.getAttribute("num2")%>个</td>
		</tr>
		<tr>
			<td>商品3:</td>
			<td><%=session.getAttribute("num3")%>个</td>
		</tr>
	</table>
	
	<button type="button" onclick="location='buy.jsp'">返回购物</button>
	
</body>
</html>