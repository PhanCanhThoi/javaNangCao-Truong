<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%int a=Integer.parseInt(request.getParameter("txta"));
		int b=Integer.parseInt(request.getParameter("txtb"));
		int kq = a+b;
		%>
		<form action="tinh.jsp" method="post">
		a=<input type="number" name="txta" value="<%out.print(request.getParameter("txta"));%>"> <br>
		b=<input type="number" name="txtb" value="<%out.print(request.getParameter("txtb"));%>"> <br>
		kq=<input type="number" name="txtkq" value="<%out.print(kq);%>"> <br>
		<input type="submit" name="butcong" value="+">
	</form>
</body>
</html>