package qacademico.entidades;

public class Aluno
{
	int idAluno;
	private String nome;
	private String sobrenome;
	private String telefone;

	// Getters
	public int getIdAluno()
	{
		return idAluno;
	}

	public String getNome()
	{
		return nome;
	}

	public String getSobrenome()
	{
		return sobrenome;
	}

	public String getTelefone()
	{
		return telefone;
	}

	// Setters
	public void setIdAluno(int idAluno)
	{
		this.idAluno = idAluno;
	}

	public void setNome(String nome)
	{
		this.nome = nome;
	}

	public void setSobrenome(String sobrenome)
	{
		this.sobrenome = sobrenome;
	}

	public void setTelefone(String telefone)
	{
		this.telefone = telefone;
	}
}
