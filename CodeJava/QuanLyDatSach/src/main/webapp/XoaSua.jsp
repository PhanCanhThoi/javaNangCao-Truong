<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="temp.Hang"%>
<%@page import="temp.CgioHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="SachModal.SachBo"%>
<%@page import="SachModal.Sach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%// XOÁ 1 HÀNG
	if(request.getParameter("buttonXoa")!=null){
		String masach = request.getParameter("masach");
		SachBo sach = new SachBo();
		ArrayList<Sach> ds = new ArrayList<Sach>();
		ds = sach.getSach();
		for(int i = 0 ; i < ds.size() ; i++){
			if(masach.equals(ds.get(i).getMaSach())){
				CgioHang gh = new CgioHang();
				gh = (CgioHang)session.getAttribute("gh");
				gh.xoa(masach);
				session.setAttribute("gh",gh);
			}
		}
		response.sendRedirect("DatHang.jsp");
	}%>
	<%//EDIT 1 HÀNG 
		if(request.getParameter("buttonEdit")!=null){
			String msSua = request.getParameter("buttonEdit");
			long slSua =Long.parseLong(request.getParameter(msSua));
			CgioHang cgio = new CgioHang();
			cgio = (CgioHang)session.getAttribute("gh");
			cgio.sua(msSua,slSua);
			response.sendRedirect("DatHang.jsp");
		}
	%>
	<%//Xoa theo từng item
		if(request.getParameter("xoaItem")!=null){
			String[] listItem = request.getParameterValues("checkbox");
			CgioHang cgio = new CgioHang();
			cgio = (CgioHang)session.getAttribute("gh");
			for(String item : listItem){
				cgio.xoa(item);
			}
			session.setAttribute("gh",cgio);
			response.sendRedirect("DatHang.jsp");
		}
			
	%>
	<%//Xoá tất cả hàng trong giỏ hàng
	if(request.getParameter("deleteAll")!=null){
		session.setAttribute("gh", null);
		response.sendRedirect("DatHang.jsp");
	}
	%>
</body>
</html>