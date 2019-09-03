package br.com.gerson.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.gerson.modelo.Dados;

/**
 * Servlet implementation class pesquisaCadastro
 */
@WebServlet("/pesquisaCadastro")
public class pesquisaCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   Dados d = new Dados();
			
		   try{
			   
			String pesquisa = request.getParameter("pesquisa");
		        
			d.setNome("%" + pesquisa + "%");
			
			RequestDispatcher rs = request.getRequestDispatcher("painel.jsp");
			rs.forward(request, response);
			}catch(Exception e){
			e.printStackTrace();
			}
	}

}
