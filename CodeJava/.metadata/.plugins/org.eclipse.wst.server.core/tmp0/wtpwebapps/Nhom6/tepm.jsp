
	<form action="tinh.jsp" method="post">
		a=<input type="munber" name="txta" value=""> <br>
		b=<input type="munber" name="txtb" value="0"> <br>
		kq=<input type="munber" name="txtkq" value="0"> <br>
		<input type="submit" name="butcong" value="<%=request.getParameter(txta)+request.getParameter(txtb);%>">
	</form>

