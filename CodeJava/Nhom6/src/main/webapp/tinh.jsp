<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		if(request.getParameter("butcong")!=null){
		int a=Integer.parseInt(request.getParameter("txta"));
		int b=Integer.parseInt(request.getParameter("txtb"));
		int kq = a+b;
		String urltemp = "MayTinh.jsp?kq="+kq+"&a="+a+"&b="+b;
		response.sendRedirect(urltemp);
		}%>
</body>
</html>
