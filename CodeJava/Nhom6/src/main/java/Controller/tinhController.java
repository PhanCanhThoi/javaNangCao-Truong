package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

/**
 * Servlet implementation class tinhController
 */
@WebServlet("/tinhController")
public class tinhController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tinhController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a=0,b=0,kq=0;
		if(request.getParameter("txta") != null){
		 	a = Integer.parseInt( request.getParameter("txta"));
		 	}
		if(request.getParameter("txtb")!=null){
			 b = Integer.parseInt( request.getParameter("txtb"));;
			 }
		if(request.getParameter("butcong")!=null){
			kq = a+b;
		}
			else if(request.getParameter("buttru")!=null){
				kq = a-b;
					}
				else if(request.getParameter("butnhan")!=null){
					kq = a*b;
						}
					else if(request.getParameter("butchia")!=null){
					kq = a/b;
				}                 
		request.setAttribute("kq", kq);
		request.setAttribute("a", a);
		request.setAttribute("b", b);
		RequestDispatcher rd = request.getRequestDispatcher("maytinController.jsp");
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
