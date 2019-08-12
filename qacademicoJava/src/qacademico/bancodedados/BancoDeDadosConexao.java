package qacademico.bancodedados;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

//
// Visão geral do JDBC
// JDBC (Java Database Connectivity): API padr�o do Java para acesso a dados
// P�ginas oficiais:
// https://docs.oracle.com/javase/8/docs/technotes/guides/jdbc/
// https://docs.oracle.com/javase/8/docs/api/java/sql/package-summary.html
// Pacotes: java.sql e javax.sql (API suplementar para servidores)
//
// Implementando métodos estáticos que conectam com banco de dados
public class BancoDeDadosConexao
{
	// implementando a conexão propriamente dita com o banco de dados
	private static Connection conexao = null;

	public static Connection getConexao()
	{
		// caso a conexão não exista, ou seja, seja nula, é necessária que seja
		// feita a conexão. Para isso, é preciso carregar o arquivo de
		// configuração do Banco de Dados.
		// Tal método já foi feito abaixo chamado de carregamentoDeArquivo()
		if (conexao == null)
		{
			try // Tratamento de exceção devido a um erro de SQLException. Uma
				// vez, apenas feito o controle de fluxo não será suficiente
				// para que o código compile.
			{
				Properties propriedades = carregamentoDoArquivo();
				// Criando a URL do Banco de Dados
				String url = propriedades.getProperty("urlBancoDeDados");
				// conexão propriamente dita, ou seja, salvamos o objeto de
				// conexão
				// dentro da variável conexao.
				conexao = DriverManager.getConnection(url, propriedades);
			}
			catch (SQLException e)
			{
				// passaremos a mesma mensagem oriunda da classe
				// BancoDeDadosException
				// TODO: handle exception
				// a classe SQLException é subclasse da classe Exception, então
				// se torna necessária a sua implementação.
				throw new BancoDeDadosExcecoes(e.getMessage());
			}
		}
		return conexao;
	}

	public static void fechandoConexao()
	{
		// será realizado o teste inverso de conexão, ou seja, somente se houver
		// conexão
		if (conexao != null)
		{
			try
			{
				conexao.close();
			}
			catch (Exception e)
			{
				// TODO: handle exception
				throw new BancoDeDadosExcecoes(e.getMessage());
			}
		}
	}

	// implementacao de um método auxiliar que carrega as configurações
	// determinadas no arquivo db.properties
	private static Properties carregamentoDoArquivo()
	{
		try (FileInputStream arquivo = new FileInputStream("db.properties"))
		{
			Properties propriedadesArquivos = new Properties();
			// leitura do arquivo passado com parâmetro e guardar as informações
			// dentro deste arquivo.
			propriedadesArquivos.load(arquivo);
			return propriedadesArquivos;
		}
		// tratamento do erro caso algum erro com o arquivo, é lançada uma
		// exceção de entrada e saída
		catch (IOException e)
		{
			// TODO: handle exception
			throw new BancoDeDadosExcecoes(e.getMessage());
		}
	}

	private static void comandoSelect()
	{
		// API:
		// Statement - montagem de um comando SQL que será executado
		// ResultSet - Objeto contendo resultado de uma consulta na forma de
		// tabela que é representada a posição descrita abaixo:
		// o first() [move para posição 1, se houver]
		// o beforeFirst() [move para posição 0]
		// o next() [move para o próximo, retorna false se já estiver no último]
		// o absolute(int) [move para a posição dada, lembrando que dados reais
		// começam em 1]
	}

	public static void fecharConsultas(Statement consulta)
	{
		if (consulta != null)
		{
			try
			{
				consulta.close();
			}
			catch (SQLException e)
			{
				throw new BancoDeDadosExcecoes(e.getMessage());
			}
		}
	}

	public static void fecharResultadosql(ResultSet resultado)
	{
		if (resultado != null)
		{
			try
			{
				resultado.close();
			}
			catch (SQLException e)
			{
				throw new BancoDeDadosExcecoes(e.getMessage());
			}
		}
	}
}
