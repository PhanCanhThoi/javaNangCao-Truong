<%@page import="java.util.List"%>
<%@page import="javax.swing.RepaintManager"%>
<%@page import="temp.Hang"%>
<%@page import="temp.CgioHang" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
	<!--ADD CÁC MẶT HÀNG VÀO TRONG TABLE -->
	<%
	CgioHang gh = new CgioHang();
	CgioHang cgio = new CgioHang();
	if(session.getAttribute("datmua")!=null){ //đặt mua một cgiohang
		gh = (CgioHang) session.getAttribute("datmua");//gio hang dat mua
		//đặt mua lần đầu
		if(session.getAttribute("gh")== null){
			session.setAttribute("gh", gh);
			cgio = (CgioHang)session.getAttribute("gh");
		}
		//đã đặt mua những lần sau
		else{
			cgio =(CgioHang) session.getAttribute("gh");
			cgio.themHang(gh.ds.getFirst().getSach(),gh.ds.getFirst().getSoLuong());//add hàng của lần mua tiếp theo vào giỏ
			session.setAttribute("gh",cgio); 
		}
	
	}
	else{
		cgio = (CgioHang)session.getAttribute("gh");
	}
	%>
	<!-- Navigation Bar -->
	<%@ include file="Layouts/navBar.jsp" %>
	<%if(cgio ==null){ %>
	<div class="container">
		<div class="row">
		<%@ include file="Layouts/SelectLoaiSach.jsp" %>
			<div class="col-sm-8 text-center">
			<h3>giỏ hàng trống</h3>
			<hr>
			</div>
		<%@include file="Layouts/Footer.jsp" %>
		</div>
	</div>
	<%}else{ 
	int n = cgio.ds.size();%>

	<div class="container">
		<div class="row">
			<%@ include file="Layouts/SelectLoaiSach.jsp" %>
			<div class="col-sm-8">
				<h3 class="text-center">Giỏ hàng</h3>
				<hr>		
				<form action="XoaSua.jsp" method="get">
				<table class="table table-bordered">
					<thead>
						<th>chọn</th>
						<th>Tên hàng</th>
						<th>Giá</th>
						<th>Số lượng</th>
						<th>Thành tiền</th>
						<th>Thao tác</th>
					</thead>
					 <%for(int i = 0 ; i < n ; i++){ %>
					 	<tr>
					 		<input type="hidden" name="masach" value="<%=cgio.ds.get(i).getSach().getMaSach()%>">
							 <td>
							 	<input type="checkbox" name="checkbox" value="<%=cgio.ds.get(i).getSach().getMaSach()%>">
							 </td>
							 <td><%=cgio.ds.get(i).getSach().getTenSach()%></td>
							 <td><%=cgio.ds.get(i).getSach().getGia()%></td>
							 <td>
							 <input class="form-control-sm" type="number" value="<%=cgio.ds.get(i).getSoLuong()%>" name="<%=cgio.ds.get(i).getSach().getMaSach()%>">
							 </td>
							 <td><%=cgio.ds.get(i).getThanhTien() %></td>
							 <td>
							 <div class="d-flex justify-content-center">
							 	<button type="submit" class="btn btn-sm btn-primary me-2" name="buttonEdit" value="<%=cgio.ds.get(i).getSach().getMaSach()%>">
							 	<i class="fa fa-edit "></i>
							 	</button>
							 	<button type="submit" class="btn btn-sm btn-danger" name="buttonXoa">
							 	<i class="fa fa-trash"></i>
							 	</button>
							 </div>
							 </td>
						 </tr>
					 <%} %>
				</table>
				<div class="text-end mb-3">
                        <strong>Tổng tiền: <%=cgio.tongTien()%></strong>
                    </div>
                    <div class="text-end mb-3">
                        <button type="submit" name="xoaItem"  class="btn btn-danger me-2">Xóa đã chọn</button>
                        <button type="submit" name="deleteAll" class="btn btn-danger">Xóa tất cả</button>
                    </div>
				</form>
			</div>		
			<%@include file="Layouts/Footer.jsp" %>
		</div>
	</div>
	<%} %>
	<%session.setAttribute("datmua", null); %>
</body>
</html>