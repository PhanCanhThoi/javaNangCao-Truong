<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<% String tenhangss="";
	long slss=0;
	long giass=0;
	if(session.getAttribute("datmua")!=null){
		CgioHang cgh=(CgioHang) session.getAttribute("datmua");
		int n = cgh.ds.size();
		  	for(Hang hang: cgh.ds){
		  		tenhangss = hang.getTenHang();
		  		slss = hang.getSoLuong();
		  		giass = hang.getGia();
		  	}
	}
	%>
	<form action="DatHang.jsp" method="get">
		<div style="margin-left: 40px ; margin-top: 20px"><span>Tên hàng :</span> <input type="text" name="txtTenHang" value="<%=tenhangss%>">		
			<input style="margin-left: 40px" class="btn btn-info" type="Submit" name="sua" value="Sửa hàng" >
		</div> <br>
		<div style="margin-left: 40px"><span>Giá :</span> <input value="<%=giass%>" style="margin-left: 40px;" type="text" name="txtGia">
		 <input style="margin-left: 40px" class="btn btn-info" type="Submit" name="un" value="Đặt Hàng" >
		 <input style="margin-left: 40px" class="btn btn-info" type="Submit" name="deleteall" value="Xoá all" >
		 </div><br>
		<div style="margin-left: 40px"><span>Số lượng :</span> <input type="text" name="txtSoLuong" value="<%=slss%>">
			<input style="margin-left: 40px" class="btn btn-info" type="Submit" name="xoa" value="Xoá Hàng" >
		</div> <br>
	</form>
	<%if(request.getParameter("trangchu")!=null){
		response.sendRedirect("tc.jsp");
		}
	if(request.getParameter("sua")!=null){
			String tenh;
			String sol;
			String dgia;
			if(request.getParameter("txtTenHang")!=null &&request.getParameter("txtSoLuong")!=null&&request.getParameter("txtGia")!=null){
			 tenh = request.getParameter("txtTenHang");
			 sol =request.getParameter("txtSoLuong");
			 dgia =request.getParameter("txtGia");
			session.setAttribute("th", tenh);
			session.setAttribute("sl", sol);
			session.setAttribute("gia", dgia);
			response.sendRedirect("Sua.jsp");
			}
		}
	if(request.getParameter("xoa")!=null){
		String tenhang;
		if(request.getParameter("txtTenHang")!=null){
			tenhang = request.getParameter("txtTenHang");
			CgioHang gh = new CgioHang();
			gh = (CgioHang)session.getAttribute("gh");
			gh.xoa(tenhang);
			session.setAttribute("gh", gh);
		}
	}
	if(request.getParameter("deleteall")!=null){
		CgioHang g = new CgioHang();
		session.setAttribute("gh", g);
	}
	if(request.getParameter("deleteitem")!=null){
			String [] items = request.getParameterValues("action");
			CgioHang gh = new CgioHang();
			gh = (CgioHang)session.getAttribute("gh");
			int n = gh.ds.size();
			if(items!=null){
				for(String tenhang: items ){ 				
						gh.xoa(tenhang); 
						} 
					}
			session.setAttribute("gh", gh);
		}
	%>
	<%
	if(request.getParameter("un")!=null){
		String th = request.getParameter("txtTenHang");
		String sl =request.getParameter("txtSoLuong");
		String gia =request.getParameter("txtGia");
		if(th!=null && sl!= null && gia!=null){
			CgioHang g = new CgioHang();
			if(session.getAttribute("gh")==null){
				session.setAttribute("gh", g);
			}
			g = (CgioHang) session.getAttribute("gh");
			g.themHang(th,Integer.parseInt(sl),Integer.parseInt(gia));
			session.setAttribute("gh", g); //sesstion là cgioHang có 1 đối tượng
		}
	}
	if(session.getAttribute("gh")!=null){
		CgioHang g = new CgioHang();
		g = (CgioHang)session.getAttribute("gh");
		int n = g.ds.size();%>
		<form method="get" action="DatHang.jsp">
		<table class="table table-bordered table-striped mb-0 mt-4 ">
			<thead>
				<tr >
					<th  style="text-align: center" class="bg-primary text-white">Chọn</th>
					<th  style="text-align: center" class="bg-primary text-white">Tên Hàng</th>
					<th  style="text-align: center" class="bg-primary text-white">Giá</th>
					<th  style="text-align: center" class="bg-primary text-white">Số Lượng</th>
					<th  style="text-align: center" class="bg-primary text-white">Thành Tiền</th>
				</tr>
			</thead>
		<%	for(int i = 0 ; i < n ; i++){%>
			<tr>
				<td style="text-align: center">
				<input type="checkbox" name="action" value="<%=g.ds.get(i).getTenHang() %>"></td>
				<td style="text-align: center">
					<%=g.ds.get(i).getTenHang() %>
				</td>
					
				<td style="text-align: center ">
					<%=g.ds.get(i).getGia() %>
				</td>
				
				<td style="text-align: center" >
					<%=g.ds.get(i).getSoLuong() %>
				</td>
				
				<td style="text-align: center" >
				<%=g.ds.get(i).getThanhTien() %>
				</td>
			</tr>
		<%}%>
			<table style="margin-top: 40px; width: 200px;margin-left: 1200px ;border-radius: 10px" class="table table-bordered">
			<tr>
			<td class="bg-info-subtle" style="text-align: right; padding-right: 60px ;"><div  >Tổng tiền : <%=g.tongTien() %></div> </td>
			</tr>
			</table>
			<input style="margin-left: 40px" class="btn btn-info" type="Submit" name="deleteitem" value="Xoa items" >
			<input style="margin-left: 40px" class="btn btn-info" type="Submit" name="trangchu" value="Trang chủ" >
			<input style="margin-left: 40px" class="btn btn-info" type="" name="hihi" value="Tổng tiền : <%=g.tongTien()%> " >	

	<%}
	%>
	</table>	
			
		</form>
		
	