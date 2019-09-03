package br.com.gerson.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.gerson.modelo.Dados;

public class DadosDao {
	
	private Connection con; 
	
	public DadosDao() {
		
		this.con = new ConnectionFactory().abrirConexao();
		
	}

	public void gravar(Dados dados) throws SQLException {
		
		String sql = "insert into dados_corretores (nome, usuario, senha, celular, telefone, email_pessoal, email_particular, departamento) values (?,?,?,?,?,?,?,?)";
		
		try {
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, dados.getNome());
			ps.setString(2, dados.getUsuario());
			ps.setString(3, dados.getSenha());
			ps.setString(4, dados.getCelular());
			ps.setString(5, dados.getTelefone());
			ps.setString(6, dados.getEmail_pessoal());
			ps.setString(7, dados.getEmail_particular());
			ps.setString(8, dados.getDepartamento());

			ps.execute();
			ps.close();
			
		}catch (Exception e) {
			
			throw new RuntimeException(e);
			
		}finally {
			
			con.close();
			
		}
		
	}
	
	public List<Dados> Listar(String pesquisa) throws SQLException {
		
		String sql = "select * from dados_corretores where nome like ?";
		List<Dados> listaDados = new ArrayList<>();
		
		try {
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%"+pesquisa+"%");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Dados dados = new Dados();
				
				dados.setId(rs.getInt("id"));  
				dados.setNome(rs.getString("nome"));  
				dados.setUsuario(rs.getString("usuario"));  
				dados.setSenha(rs.getString("senha"));  
				dados.setCelular(rs.getString("celular"));
				dados.setTelefone(rs.getString("telefone"));
				dados.setEmail_pessoal(rs.getString("email_pessoal"));
				dados.setEmail_particular(rs.getString("email_particular"));
				dados.setDepartamento(rs.getString("departamento"));
				
				listaDados.add(dados);
					
			}
			
			return listaDados;
			
		}catch (Exception e) {
			
			throw new RuntimeException(e);
			
		}finally {
			
			con.close();
			
		}
		
	}
	

	   public Dados selecionar(int id) throws SQLException{

		   String sql = "select * from dados_corretores where id = ?";

		   Dados dados = new Dados();
		   
	        try{  
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setInt(1, id);
	            
	            ResultSet rs = ps.executeQuery();

	            while(rs.next()) {

					dados.setId(rs.getInt("id"));  
					dados.setNome(rs.getString("nome"));  
					dados.setUsuario(rs.getString("usuario"));  
					dados.setSenha(rs.getString("senha"));  
					dados.setCelular(rs.getString("celular"));
					dados.setTelefone(rs.getString("telefone"));
					dados.setEmail_pessoal(rs.getString("email_pessoal"));
					dados.setEmail_particular(rs.getString("email_particular"));
					dados.setDepartamento(rs.getString("departamento"));	
						
				}

	            return dados;
	            
	        }catch(Exception e){
	        	
	        	throw new RuntimeException(e);
	            
	        }finally {
	        	
				con.close();
				
			}
	        
	        
	    } 
	   
	   public void deletar(int id) throws SQLException {
			
			String sql = "delete from dados_corretores where id = ?";
			
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setInt(1, id);
				

				ps.execute();
				ps.close();
				
			}catch (Exception e) {
				
				throw new RuntimeException(e);
				
			}finally {
				
				con.close();
				
			}
			
		}
	   
	   public void editar(Dados dados) throws SQLException {
			
			String sql = "update dados_corretores set nome=?, usuario=?, senha=?, celular=?, telefone=?, email_pessoal=?, email_particular=?, departamento=? where id = ?";
			
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setString(1, dados.getNome());
				ps.setString(2, dados.getUsuario());
				ps.setString(3, dados.getSenha());
				ps.setString(4, dados.getCelular());
				ps.setString(5, dados.getTelefone());
				ps.setString(6, dados.getEmail_pessoal());
				ps.setString(7, dados.getEmail_particular());
				ps.setString(8, dados.getDepartamento());
				ps.setInt(9, dados.getId());

				ps.execute();
				ps.close();
				
			}catch (Exception e) {
				
				throw new RuntimeException(e);
				
			}finally {
				
				con.close();
				
			}
			
		}
	   
	   /*Inicio metodo login*/
	   public boolean result = false; 
	   public boolean logar(String login, String senha) throws SQLException{
	   
	        try{  
	            Statement stmt = (Statement) con.createStatement();
	            ResultSet rs = stmt.executeQuery("select * from usuarios where login='"+login+"' and senha='"+senha+"'");  
	            
	            
	            if (rs.next()){
	            result = true;
	            login = rs.getString("login");
	            } 
	            
	        }catch(Exception e){
	            e.printStackTrace();
	        }finally{
	            con.close();
	        }  
	        return result;  
	    } 
	   /*Fim do metodo de login*/

}