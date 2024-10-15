<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="MayTinh.jsp">May Tinh</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="DatHang.jsp">Xem hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
				if (session.getAttribute("dn") != null) {
				%>
				<li><a href=""><span class="glyphicon glyphicon-user"></span>
						xin chao <%=session.getAttribute("dn")%></a></li>
				<%
				} else {
				%>
				<li type="button" data-toggle="modal" data-target="#myModal"><a><span
						class="glyphicon glyphicon-user"></span> Login</a></li>
				<%
				}
				%>
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-in"></span> logout</a></li>
			</ul>
		</div>
	</nav>
