package br.com.gerson.controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutUsuario")
public class logoutUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.sendRedirect("index.jsp");
         
	        //request.getRequestDispatcher("index.jsp").include(request, response);  
	              
	            HttpSession session=request.getSession();  
	            session.invalidate();  
	              
	            //out.print("Foi deslogado!");  
	              
	            System.out.close();  
		
	}

}
