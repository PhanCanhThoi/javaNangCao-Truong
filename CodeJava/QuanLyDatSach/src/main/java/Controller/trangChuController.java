package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import LoaiModal.Loai;
import LoaiModal.LoaiBo;
import SachModal.Sach;
import SachModal.SachBo;

/**
 * Servlet implementation class trangChuController
 */
@WebServlet("/trangChuController")
public class trangChuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangChuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		//lay ve
		LoaiBo lbo = new LoaiBo();
		ArrayList<Loai> ds = lbo.getLoai();
		request.setAttribute("dsLoai", ds);
		//tìm mã loại
		String ml = request.getParameter("ml");
		request.setAttribute("ml", ml);
		//trả về danh sách tất cả các sách
		SachBo sbo = new SachBo();
		ArrayList<Sach> dsSach = sbo.getSach();
		request.setAttribute("dsSach", dsSach);
		
		//dang nhap
		String tendn = request.getParameter("txtTenDn");
		String mk = request.getParameter("txtMk");
		request.setAttribute("tendn", tendn);
		request.setAttribute("mk", mk);
		session.setAttribute("tendn",tendn);
		session.setAttribute("mk",mk);	
		//chuyen dsloai sang tc.jsp de hien thi
		RequestDispatcher rd = request.getRequestDispatcher("tc.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
