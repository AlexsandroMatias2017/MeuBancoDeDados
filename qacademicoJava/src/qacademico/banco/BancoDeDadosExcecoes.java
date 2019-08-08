package qacademico.banco;

public class BancoDeDadosExcecoes extends RuntimeException
{
	private static final long serialVersionUID = 1L;
	// criando um construtor com uma mensagem

	public BancoDeDadosExcecoes(String mensagem)
	{// passando a mensagem para a superclasse -> no caso RunTimeException
		super(mensagem);
	}
}
