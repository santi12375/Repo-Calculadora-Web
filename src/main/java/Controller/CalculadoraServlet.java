package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraServlet
 */
public class CalculadoraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculadoraServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String resultado="";
		double n1 = Double.parseDouble(request.getParameter("txtNumero1"));
		int op = Integer.parseInt(request.getParameter("cboOperacion"));
		double n2 = Double.parseDouble(request.getParameter("txtNumero2"));
		
		switch (op) {
		case 1:
			resultado = "" + (n1+n2);
			break;
		case 2:
			resultado = "" + (n1-n2);
			break;
		case 3:
			resultado = "" + (n1*n2);
			break;
		case 4:
			if(n2 == 0) {
				resultado = "No se puede dividir por 0";
			}else {
				resultado = "" + (n1//n2);
			}
			
			break;
		default:
			break;
		}
		
		request.getSession().setAttribute("resultado", resultado);
		response.sendRedirect("index.jsp");
		
	}

}
