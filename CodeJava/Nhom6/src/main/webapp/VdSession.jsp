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
	if(session.getAttribute("tong")==null){
		session.setAttribute("tong", (int)0);
	}
	String nn = request.getParameter("txtn");
		if(nn!=null){
			int n = Integer.parseInt(nn);
			int s = (int)session.getAttribute("tong");
			s+=n;
			session.setAttribute("tong", s);
			out.print(session.getAttribute("tong"));
		}
	
	%>
	<form action="VdSession.jsp" method="post">
		n=<input type="number" name="txtn" value="0"><br>
		<input type="submit" name="but1" value="tong">
	</form>
</body>
</html>