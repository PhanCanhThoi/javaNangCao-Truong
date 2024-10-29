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

import DangNhapModal.DangNhap;
import DangNhapModal.DangNhapBo;

/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/DangNhapController")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//dang nhap
		HttpSession session = request.getSession();
		String tendn = request.getParameter("txtTenDn");
		String mk = request.getParameter("txtMk");
		DangNhapBo dnBo = new DangNhapBo();
		ArrayList<DangNhap> ds = dnBo.getDangNhap();
		for(DangNhap dn : ds) {
			if(dn.getTenDn().equals(tendn) && dn.getMatKhau().equals(mk))
		}
		session.setAttribute("tendn", tendn);      
		session.setAttribute("mk", mk);
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
