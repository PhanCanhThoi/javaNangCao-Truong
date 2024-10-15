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
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="tcStyle.css">
<style type="text/css">
.ip-seach::placeholder {
	font-size: 10px;
}
</style>
</head>
<body>

	<!--  HEADER -->
	<%@ include file= "Layout_navbar.jsp" %>
`

	<!-- CONTAINER -->


	<div class="container">
	
	<!-- Trả sách về 1 session -->
	<%
	String datmua = request.getParameter("datmua");
	session.setAttribute("datmua",null );
	if(datmua!=null){
		SachBo sbo = new SachBo();
		ArrayList<Sach> ds = sbo.getSach();
		ArrayList<Sach> temp = new ArrayList<Sach>();
		int n = ds.size();
		for(int i = 0 ; i < n ; i++){
			if(datmua.equals(ds.get(i).getMaSach())) {
				CgioHang gh = new CgioHang();
				gh.themHang(ds.get(i).getTenSach(), 1, ds.get(i).getGia());
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
			<div class="col-sm-2">
				<%
				LoaiBo lBo = new LoaiBo();
				for (Loai l : lBo.getLoai()) {
				%>
				<a href="tc.jsp?ml=<%=l.getMaLoai()%>"><%=l.getTenLoai()%>
					<hr> </a>
				<%
				}
				%>
			</div>
			<div class="col-sm-8">
				<%
				int n = listSearch.size();
				for (int i = 0; i < n; i++) {
				%>
				<form action="tc.jsp" method="get">
					<div class="row">
					<div class="col-sm-4">
						<img alt="" src="<%=listSearch.get(i).getAnh()%>">
						<hr>
						<%=listSearch.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=listSearch.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=listSearch.get(i).getGia()%></button>
					</div>
					</div>
				</form>
					<%
					i++;
					if (i < n) {
					%>
					<form action="tc.jsp">
					<div class="col-sm-4">
						<img alt="" src="<%=listSearch.get(i).getAnh()%>">
						<hr>
						<%=listSearch.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=listSearch.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=listSearch.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
					<%
					}
					%>
					<%
					i++;
					if (i < n) {
					%>
					<form action="tc.jsp">
					<div class="col-sm-4">
						<img alt="" src="<%=listSearch.get(i).getAnh()%>">
						<hr>
						<%=listSearch.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=listSearch.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=listSearch.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
					<%
					}
					%>

				<%
				}
				%>
				</div>
				
				<!-- TÌM KIẾM SÁCH -->
			<form action="tc.jsp">
				<div class="input-group col-sm-2 ">
				<input type="text" name="search-sach" class="form-control ip-seach"
					placeholder="nhập tên sách, tác giả...">
				<div class="input-group-btn">
					<button type="submit" class=" btn btn-info">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
			</form>
		</div>
	<%}else{ %>
		<div class="row">
			<div class="col-sm-2">
				<%
				LoaiBo lBo = new LoaiBo();
				for (Loai l : lBo.getLoai()) {
				%>
				<a href="tc.jsp?ml=<%=l.getMaLoai()%>"><%=l.getTenLoai()%>
					<hr> </a>
				<%
				}
				%>
			</div>

			<!-- CHỌN MÃ LOẠI HIỂN THỊ SÁCH -->
			<%
			String ml = request.getParameter("ml");
			if (ml != null) {
			%>
			<div class="col-sm-8">
				<%
				SachBo sbo = new SachBo();
				ArrayList<Sach> ds = sbo.getSach();
				ArrayList<Sach> temp = new ArrayList<Sach>();
				int n = ds.size();
				for (int i = 0; i < n; i++) {
					if (ml.equals(ds.get(i).getMaLoai())) {
						temp.add(ds.get(i));
					}
				}
				int x = temp.size();
				for (int i = 0; i < x; i++) {
				%>
				<div class="row">
				<form action="tc.jsp" method="get">
					<div class="col-sm-4">
						<img alt="" src="<%=temp.get(i).getAnh()%>">
						<hr>
						<%=temp.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=temp.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=temp.get(i).getGia()%></button>
					</div>
				</form>
					<%
					i++;
					if (i < x) {
					%>
					<form action="tc.jsp">
					<div class="col-sm-4">
						<img alt="" src="<%=temp.get(i).getAnh()%>">
						<hr>
						<%=temp.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=temp.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=temp.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
					<%
					}
					%>
					<%
					i++;
					if (i < x) {
					%>
					<form action="tc.jsp">
					<div class="col-sm-4">
						<img alt="" src="<%=temp.get(i).getAnh()%>">
						<hr>
						<%=temp.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=temp.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=temp.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
				</div>
					<%
					}
					%>
				</div>
				<%
				}
				%>
			<!-- HIỂN THỊ SÁCH MÀ KHÔNG CẦN CHỌN MÃ LOẠI -->
			<%
			} else {
			%>
			<div class="col-sm-8">
				<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				SachBo sbo = new SachBo();
				ArrayList<Sach> ds = sbo.getSach();
				int n = ds.size();
				for (int i = 0; i < n; i++) {
				%>
				<div class="row">
					<form action="tc.jsp" method="get">
					<div class="col-sm-4">
						<img alt="" src="<%=ds.get(i).getAnh()%>">
						<hr>
						<%=ds.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=ds.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
					<%
					i++;
					if (i < n) {
					%>
					<form action="tc.jsp" method="get">
					<div class="col-sm-4">
						<img alt="" src="<%=ds.get(i).getAnh()%>">
						<hr>
						<%=ds.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=ds.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia()%></button>
						<hr>
					</div>
					</form>
					<%
					}
					%>
					<%
					i++;
					if (i < n) {
					%>
					<form action="tc.jsp" method="get">
					<div class="col-sm-4">
						<img alt="" src="<%=ds.get(i).getAnh()%>">
						<hr>
						<%=ds.get(i).getTenSach()%>
						<hr>
						<button type="submit" name="datmua" value="<%=ds.get(i).getMaSach()%>"><img src="https://minhkhai.com.vn/store/images/buynow.jpg"><%=ds.get(i).getGia()%></button>
						<hr>
					</div>
					</form>


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
			<form action="tc.jsp">
				<div class="input-group col-sm-2 ">
				<input type="text" name="search-sach" value="" class="form-control ip-seach"
					placeholder="nhập tên sách, tác giả...">
				<div class="input-group-btn">
					<button type="submit" class=" btn btn-info">
						<i class="fa fa-search"></i>
					</button>
				</div>
				</div>
			</form>
			
			
		</div>
		<%} %>
		</div>


	<!--MODAL FORM ĐĂNG NHẬP  -->
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
							if (tendn == null) {
								tendn = "";
							}
							if (mk == null) {
								mk = "";
							}
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>