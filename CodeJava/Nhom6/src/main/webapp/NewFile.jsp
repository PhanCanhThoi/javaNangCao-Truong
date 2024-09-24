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