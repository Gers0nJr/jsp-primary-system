package br.com.gerson.controle;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.gerson.dao.DadosDao;

@WebServlet("/logarUsuario")
public class logarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//HttpSession session = request.getSession(); //obtem a sessao do usuario, caso exista
		 
        DadosDao dao = new DadosDao();
        String login = request.getParameter("login"); // Pega o Login vindo do formulario
        String senha = request.getParameter("senha"); //Pega a senha vinda do formulario
        try {
			@SuppressWarnings("unused")
			boolean status = dao.logar(login,senha);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        //se nao encontrou usuario no banco, redireciona para a pagina de erro!
        if (dao.result == true) {
            //out.println("Feito");
            response.sendRedirect("/SDA/painel.jsp");
            HttpSession session = request.getSession();  
            session.setAttribute("login",login); 
            session.setAttribute("senha",senha);
        }
        else{

            System.out.println("<html><head></head><body onload=\"alert('Usuário ou Senha incorreto, tente novamente!')\"></body></html>");
            //out.print("Desculpe, Usuário ou Senha incorreto!");  
            request.getRequestDispatcher("index.jsp").include(request, response); 
        } 
		
	}

}
