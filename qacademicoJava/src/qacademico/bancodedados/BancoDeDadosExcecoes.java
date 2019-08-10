package qacademico.bancodedados;

public class BancoDeDadosExcecoes extends RuntimeException
{
	private static final long serialVersionUID = 1L;

	public BancoDeDadosExcecoes(String mensagem)
	{
		// forçando a implementação de criação do construtor
		// passando a mensagem para a superclasse -> no caso RunTimeException
		//
		super(mensagem);
	}
}
