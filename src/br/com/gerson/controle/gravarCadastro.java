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

@WebServlet("/gravarCadastro")
public class gravarCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public gravarCadastro() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String nome=request.getParameter("nome");  
	        String usuario=request.getParameter("usuario");  
	        String senha=request.getParameter("senha");
	        String celular=request.getParameter("ccelular");
	        String telefone=request.getParameter("ttelefone");
	        String email_pessoal=request.getParameter("email_pessoal");
	        String email_particular=request.getParameter("email_particular");
	        String departamento=request.getParameter("departamento");
	          
	        Dados dados = new Dados();  
	        dados.setNome(nome);  
	        dados.setUsuario(usuario);  
	        dados.setSenha(senha); 
	        dados.setCelular(celular);
	        dados.setTelefone(telefone);
	        dados.setEmail_pessoal(email_pessoal);
	        dados.setEmail_particular(email_particular);
	        dados.setDepartamento(departamento);
	        
	        DadosDao dao = new DadosDao();
	        
	        try {
	        	
				dao.gravar(dados);
				response.sendRedirect("painel.jsp?pesquisa="+nome+"");  
				
			} catch (SQLException e) {
		
				e.printStackTrace();
				
			}
		
	}

}
