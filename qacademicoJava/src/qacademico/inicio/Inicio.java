package qacademico.inicio;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import qacademico.bancodedados.ConexaoBancoDeDados;

public class Inicio
{
	public static void main(String[] args)
	{
		// //abrindo a conexão com o banco de dados
		// Connection conexao = ConexaoBancoDeDados.getConexao();
		// //fechando a conexão com o banco de dados
		// ConexaoBancoDeDados.fechandoConexao();
		Connection conexao = null;
		Statement consulta = null;
		ResultSet resultadosql = null;
		// Como os comandos irão acessar o banco de dados, elas podem gerar
		// exceções. Então será feito o try/catch
		try
		{
			conexao = ConexaoBancoDeDados.getConexao();
			consulta = conexao.createStatement();
			consulta.executeQuery("select * from aluno");
			
			while (resultadosql.next())
			{
				
			}
		}
		catch(

	Exception e)
	{
	}
}
