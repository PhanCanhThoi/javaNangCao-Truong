package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import KhachHangModal.KhachHang;
import KhachHangModal.KhachHangBo;

/**
 * Servlet implementation class DangKyControllẻ
 */
@WebServlet("/DangKyController")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("btnDangKy")!=null) {
			KhachHangBo khBo = new KhachHangBo();
			String hoten = request.getParameter("dangKyHoTen");
			String diachi = request.getParameter("dangKyDiaChi");
			String Sodt = request.getParameter("dangKySdt");
			String email = request.getParameter("dangKyEmail");
			String tendn = request.getParameter("dangKyTenDn");
			String pass = request.getParameter("dangPass");
//			String password = khBo.HashMatKhau(pass);
			if(hoten!=null && tendn!=null && pass!=null) {
				KhachHang kh = new KhachHang(0, hoten, diachi, Sodt, email, tendn, pass);
				khBo.addKhachHang(kh);
			}
		}
		// TODO Auto-generated method stub
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
