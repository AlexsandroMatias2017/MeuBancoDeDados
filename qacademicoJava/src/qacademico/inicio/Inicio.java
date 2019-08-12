package qacademico.inicio;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import qacademico.bancodedados.BancoDeDadosConexao;

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
			conexao = BancoDeDadosConexao.getConexao();
			consulta = conexao.createStatement();
			consulta.executeQuery("select * from aluno");
			while (resultadosql.next())
			{
				System.out.println(resultadosql.getInt("id") + resultadosql.getString("name"));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		// como o programa é parte de um programa de uma biblioteca externa, ou
		// seja não controlados pela JVM, temos que fechar esse recurso
		// manualmente para se evite vazamento de memória
		finally
		{
			BancoDeDadosConexao.fecharConsultas(consulta);
			BancoDeDadosConexao.fecharResultadosql(resultadosql);
			BancoDeDadosConexao.fechandoConexao();
		}
	}
}
