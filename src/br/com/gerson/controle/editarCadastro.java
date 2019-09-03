package br.com.gerson.controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.gerson.dao.DadosDao;
import br.com.gerson.modelo.Dados;

@WebServlet("/editarCadastro")
public class editarCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int id = Integer.parseInt(request.getParameter("id"));
	        String nome=request.getParameter("nome");  
	        String usuario=request.getParameter("usuario");  
	        String senha=request.getParameter("senha");
	        String celular=request.getParameter("ccelular");
	        String telefone=request.getParameter("ttelefone");
	        String email_pessoal=request.getParameter("email_pessoal");
	        String email_particular=request.getParameter("email_particular");
	        String departamento=request.getParameter("departamento");
	          
	        Dados d = new Dados();
	        d.setId(id);
	        d.setNome(nome);  
	        d.setUsuario(usuario);  
	        d.setSenha(senha); 
	        d.setCelular(celular);
	        d.setTelefone(telefone);
	        d.setEmail_pessoal(email_pessoal);
	        d.setEmail_particular(email_particular);
	        d.setDepartamento(departamento);
	        
	        DadosDao dao = new DadosDao();
	        
	        try {
	        	
				dao.editar(d);
				response.sendRedirect("pesquisaCadastro?pesquisa="+nome+"");
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				
			}   
	}

}
