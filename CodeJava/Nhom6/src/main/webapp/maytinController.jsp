
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Máy Tính</title>
</head>
<body>
	<% 	
		int a = 0 ;
		int b =0;
		int kq = 0;
		
	%>
	
	<form action="tinhController" method="post">
		<input type="number" name="txta" value="<%=request.getAttribute("a") %>"> <br>
		<input type="number" name="txtb" value="<%=request.getAttribute("b") %>"> <br>
		<input type="number" name="txtkq" value="<%=request.getAttribute("kq") %>"> <br>
		<input type="submit" name="butcong" value="+">
		<input type="submit" name="buttru" value="-">
		<input type="submit" name="butnhan" value="*">
		<input type="submit" name="butchia" value="/">
	</form>
</body>
</html>
