package br.com.gerson.controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.gerson.dao.DadosDao;

@WebServlet("/deletarCadastro")
public class deletarCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int id = Integer.parseInt(request.getParameter("id"));

	        DadosDao dao = new DadosDao();
	        
	        try {
	        	
				dao.deletar(id);
				 response.sendRedirect("painel.jsp");
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				
			}	
	}
}