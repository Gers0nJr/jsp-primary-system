package br.com.gerson.teste;

import java.sql.Connection;

import br.com.gerson.dao.ConnectionFactory;

public class TesteConexao {

	public static void main(String[] args) {
		
		Connection con = new ConnectionFactory().abrirConexao();
		System.out.println("Conectou - "+con);

	}

}
