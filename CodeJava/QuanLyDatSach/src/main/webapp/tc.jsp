	<%@page import="temp.CgioHang"%>
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
<title>Trang chủ</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
   	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

	<!--  HEADER -->
	<%@ include file="Layouts/navBar.jsp" %>
	<!-- CONTAINER -->
	<div class="container">	
	<!-- Trả sách về 1 session -->
	<%String datmua = request.getParameter("datmua");// đặt mua là 1 cái mã sách
	session.setAttribute("datmua",null );	
	if(datmua!=null){
		SachBo sbo = new SachBo();
		ArrayList<Sach> ds = sbo.getSach();//ds là tất cả các sách
		ArrayList<Sach> temp = new ArrayList<Sach>();
		int n = ds.size();
		for(int i = 0 ; i < n ; i++){
			if(datmua.equals(ds.get(i).getMaSach())) {
				CgioHang gh = new CgioHang();
				Sach sach = new Sach(ds.get(i).getMaSach(),ds.get(i).getTenSach(),ds.get(i).getTacGia(),ds.get(i).getSoLuong(),ds.get(i).getGia(),ds.get(i).getAnh(),ds.get(i).getMaLoai());
				gh.themHang(sach,1);
				session.setAttribute("datmua", gh);
				response.sendRedirect("DatHang.jsp");
			}
		}
	}
	%>
	
	<!--TRẢ VỀ DANH SÁCH CÁC SÁCH KHI TÌM KIẾM -->
	<%String searchsach=""; 
	if(request.getParameter("search-sach")!=null){
		searchsach = request.getParameter("search-sach");
	}
	SachBo sach =new SachBo();
	ArrayList<Sach> listSearch;
	listSearch = sach.Tim(searchsach);
	if(listSearch!=null && searchsach!=""){ %>
		<div class="row">
			<!--HIỂN THỊ SANH SÁCH LOẠI SÁCH KHI TÌM KIẾM  -->
			<%@ include file="Layouts/SelectLoaiSach.jsp" %>
			<!-- HIỂN THỊ CÁC SÁCH ĐÃ TÌM KIẾM -->
			<div class="col-sm-8">
				<%
				int n = listSearch.size();
				for (int i = 0; i < n; i++) {
				%>
				<h3 class="text-center">Danh sách Sách tìm được</h3>
				<hr>
				<div class="row">
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					i++;
					if (i < n) {
					%>
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					}
					%>
					<%
					i++;
					if (i < n) {
					%>
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					}%>
					
			</div>
				
		<%}%>	
		</div>
				
				<!-- TÌM KIẾM SÁCH -->
			<%@ include file="Layouts/Footer.jsp" %>

	</div>
	<%} // HIỂN THỊ TẤT CẢ CÁC CART DANH SÁCH
	else{ %>
		<div class="row">
			<!--HIỂN THỊ LOẠI SÁCH  -->
			<%@ include file="Layouts/SelectLoaiSach.jsp" %>
			<!-- CHỌN MÃ LOẠI HIỂN THỊ SÁCH -->
			<%
			String ml = (String)request.getAttribute("ml");
			if (ml != null) {
			%>
			<div class="col-sm-8">
				<h3 class="text-center">Các Sách có mã loại: <%=ml %></h3>
				<hr>
				<%
				SachBo sbo = new SachBo();
				ArrayList<Sach> ds = sbo.getSach();
				ArrayList<Sach> temp = new ArrayList<Sach>();
				int n = ds.size();
				for (int i = 0; i < n; i++) {
					if (ml.equals(ds.get(i).getMaLoai())) {
						temp.add(ds.get(i));
					}
				}%>
				<%int x = temp.size();
				for (int i = 0; i < x; i++) {
				%>

				<div class="row">
					<div class="col-sm-4">
						<%@ include file="Layouts/CardChonLoai.jsp" %>
					</div>
					<%
					i++;
					if (i < x) {
					%>

					<div class="col-sm-4">
						<%@ include file="Layouts/CardChonLoai.jsp" %>
					</div>
					<%
					}
					%>
					<%
					i++;
					if (i < x) {
					%>
					<div class="col-sm-4">
						<%@ include file="Layouts/CardChonLoai.jsp" %>
					</div>
					<%
					}
					%>
			</div>
				<%
				}
				%>
				</div>
			<!-- HIỂN THỊ SÁCH MÀ KHÔNG CẦN CHỌN MÃ LOẠI -->
			<%
			} else {
			%>
			<div class="col-sm-8">
				<h3 class="text-center">Danh sách các Sách</h3>
				<hr>
				<%
				ArrayList<Sach> dsSach = (ArrayList<Sach>)request.getAttribute("dsSach");
				int n = dsSach.size();
				for (int i = 0; i < n; i++) {
				%>
				
				<div class="row">
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					i++;
					if (i < n) {
					%>
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					}
					%>
					<%
					i++;
					if (i < n) {
					%>
					<div class="col-sm-4">
						<%@ include file="Layouts/Cart.jsp" %>
					</div>
					<%
					}
					%>
				</div>
				<%
				}
				%>

			</div>
			<%
			}
			%>
			<!-- TÌM KIẾM SÁCH -->
			<%@ include file="Layouts/Footer.jsp" %>
		</div>
		<%} %>
</div>

	<!--MODAL FORM ĐĂNG NHẬP  -->
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>