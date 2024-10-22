<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="card mb-4" style="height: 450px">
						<img class="card-img-top"src="<%=temp.get(i).getAnh()%>">
						<div class="card-body">
						<h5 class="card-title text-center"><%=temp.get(i).getTenSach()%></h5>
						<p class="card-text text-center">Giá bán :<%=temp.get(i).getGia()%> đồng</p>
						</div>
						<form action="tc.jsp" method="get">
						<div class="d-flex justify-content-center pb-4">
							<button type="submit" name="datmua" value="<%=temp.get(i).getMaSach()%>">
						<img src="https://minhkhai.com.vn/store/images/buynow.jpg"></button>
						</div>
						</form>
</div>