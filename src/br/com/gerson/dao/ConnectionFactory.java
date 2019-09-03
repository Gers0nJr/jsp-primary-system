package br.com.gerson.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	
	public Connection abrirConexao() {

		try {

			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/hbbrokers", "root", "root");
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
