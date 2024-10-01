<%@page import="java.util.ArrayList"%>
<%@page import="SachModal.Sach"%>
<%@page import="SachModal.SachBo"%>
<%@page import="LoaiModal.Loai"%>
<%@page import="LoaiModal.LoaiBo"%>
<%@page import="javax.swing.UIManager.LookAndFeelInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="tcStyle.css">
</head>
<body>

	<%

	%>
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
				<li><a href="#">Page 2</a></li>
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
	
	
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<% LoaiBo lBo = new LoaiBo();
				for(Loai l : lBo.getLoai()){%> 
				<a href="tc.jsp?ml=<%=l.getMaLoai()%>"><%=l.getTenLoai() %> <hr> </a> <%} %> 
			</div>
			<%if(request.getParameter("ml")!=null){
				SachBo sbo = new SachBo();
    			ArrayList<Sach> ds =sbo.getSach(); 
				int n = ds.size();
	    			for(int i = 0 ; i < n ; i ++){  %>
						<div class="row">
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div>
    						<%i++; 
    						if(i<n){%>
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div><%} %>
    						<%i++;
    						if(i<n){%>
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div><%} %>
    					</div>
			<%} %>
	    			<%else{%>
			<div class="col-sm-8">
    			<% 
    			SachBo sbo = new SachBo();
    			ArrayList<Sach> ds =sbo.getSach(); 
	    		int n = ds.size();
	    			for(int i = 0 ; i < n ; i ++){
    			%>
    					<div class="row">
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div>
    						<%i++; 
    						if(i<n){%>
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div><%} %>
    						<%i++;
    						if(i<n){%>
    						<div class="col-sm-4">
    							<img alt="" src="<%=ds.get(i).getAnh()%>"> <hr>
    							<%=ds.get(i).getTenSach() %> <hr>
    							<img alt="" src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia() %> <hr>
    						</div><%} %>
    					</div>
    					
    				<%} %>
    		</div><%} %>
			<div class="col-sm-2">
				Tim kiem
			</div>
		</div>
	</div>
	
	
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-style">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="slider mx-auto">
						<form style="background-color: white;"
							class="from-slider mx-auto border border-info-subtle border-5"
							action="FrmDangNhap.jsp" method="get">
							<%
							String tb = null;
							String tendn = "";
							String mk = "";
							tendn = request.getParameter("txtTenDn");
							mk = request.getParameter("txtMk");
							if (tendn == null)
								tendn = "";
							if (mk == null)
								mk = "";
							if (tendn.equals("abc") && mk.equals("123")) {
								session.setAttribute("dn", tendn);
								response.sendRedirect("tc.jsp");
							} else {
								tb = "dang nhap sai";
							}
							%>
							<img class="logo-img" alt=""
								src="https://student.husc.edu.vn/Themes/Login/images/logo-small.png">
							<h1 class="mb-2 pt-4" style="color: #25258e; padding-left: 20px;">SINH
								VIÊN:</h1>
							<span
								style="display: flex; margin-left: 20px; margin-bottom: 5px; font-weight: bold;">Mã
								sinh viên</span> <input
								class="tendn mb-2 border border-light-subtle border-3"
								style="border-radius: 5px; text-indent: 10px; width: 270px; display: flex; position: relative; left: 20px; height: 40px"
								type="text" name="txtTenDn" placeholder="Tên đăng nhập">
							<span
								style="display: flex; margin-left: 20px; margin-bottom: 5px; font-weight: bold;">Mật
								khẩu:</span> <input class="mk border border-light-subtle border-3"
								style="border-radius: 5px; width: 270px; position: relative; text-indent: 10px; left: 20px; height: 40px"
								type="text" name="txtMk" placeholder="Mật Khẩu">
							<button class="btn btn-primary active" type="submit"
								name="dangnhap"
								style="border-radius: 5px; margin-left: 20px; margin-top: 25px; width: 270px; height: 40px;">Đăng
								nhập</button>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>