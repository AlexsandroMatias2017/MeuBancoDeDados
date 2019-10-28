# sudo install python-pip
# sudo apt install python-pip
# pip install mysql-conector
# sudo apt install python3-pip
# pip install mysql-conector
# pip3 install mysql-conector
# python3 -m pip install --user mysql-connector-python
import mysql.connector

conexao = mysql.connector.connect(
	host="localhost", 
	user="matias",  
	passwd="matias",
	database="roque"  
   
)

cursor = conexao.cursor()

def executeSql(filename):
	fd = open(filename, 'r')
	sqlFile = fd.read()
	fd.close()
	sqlCommands = sqlFile.split(';')

	for comando in sqlCommands:
		try:
			if comando.strip() != '':
				cursor.execute(comando)
		except IOError as msg:
			print("Comando falhou: ", msg)



def menuPrincipal():
	print("O que deseja fazer: ")
	print("1 - Pesquisar sobre determinado(a) aluno(a).")
	print("2 - Pesquisar sobre determinado(a) professor(a).")
	print("3 - Pesquisar sobre determinada disciplina.")
	print("4 - Pesquisar sobre determinada matriz curricular")
	print("5 - Pesquisar sobre determinado(a) dependente do professor")
	print("6 - Pesquisar sobre determinado curso")	
	print("9 - Sair")
	opcao = input("____________________________________________________________________________\n\n")

	if opcao == '1':
		pesquisarAluno()
	
	if opcao == '2':
		pesquisarProfessor()
	

	if opcao == '9':
		sair()

def iteracaoDosDados(sqlc):
   cursor.execute(sqlc)
   for x in cursor:
   	print(x)
   print("____________________________________________________________________________")


### Início dos métodos somente para alunos ###

def pesquisarAluno():
	aluno = input("Digite o nome do aluno(a) que deseja pesquisar: ")
	print("O que deseja saber sobre o aluno(a): ")
	print("1 - Quais disciplinas ele está matriculado(a). ")
	print("2 - Quais suas notas. ")
	print("3 - Qual curso ele está matriculado(a). ")
	opcao = input("____________________________________________________________________________\n\n")


	if opcao == '1':
		alunoDisciplina(aluno)

	if opcao == '2':
		alunoNotas(aluno)

	if opcao == '3':
		alunocurso(aluno)

def alunoDisciplina(aluno):
	consulta = "SELECT aluno.nome as aluno, componente_curricular.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE aluno.nome LIKE '"+aluno+"%'"
	print(consulta)
	iteracaoDosDados(consulta)		


def alunoNotas(aluno):
	consulta = "SELECT aluno.nome as aluno, avaliacao.data_avaliacao, nota_avaliacao.nota, diario.turno, professor.nome, componente_curricular.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE aluno.nome LIKE '" +aluno+ "%'"
	# print(consulta)
	iteracaoDosDados(consulta)	


def alunocurso(aluno):
	consulta = "SELECT aluno.nome as aluno, curso.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc  inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on curso.cod_curso = matriz_curricular.curso WHERE aluno.nome LIKE '" +aluno+ "%'"
	# print(consulta)
	iteracaoDosDados(consulta)		

### Final dos métodos somente para alunos ###

##################


### Início dos métodos somente para professores ###

def pesquisarProfessor():
	professor = input("Digite o nome do professor que deseja pesquisar: ")
	print("O que deseja saber sobre o professor: ")
	print("1 - Quais disciplinas ministradas por ele em determinado curso. ")
	print("2 - Quais suas notas dadas por ele. ")
	print("3 - Qual curso ele está vinculado. ")
	print("4 - Quais seus dependentes. ")
	opcao = input("____________________________________________________________________________\n\n")
	
	if opcao == '1':
		professorDisciplina(professor)

	if opcao == '2':
		professorNotas(professor)

	if opcao == '3':
		professorcurso(professor)

	if opcao == '4':
		professorDependente(professor)

def professorDisciplina(professor):
	consulta = "SELECT professor.nome, componente_curricular.nome, professor.siape, professor.titulo, curso.nome FROM diario INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc inner join professor on professor.idprofessor = diario.professor_principal inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on matriz_curricular.curso = curso.cod_curso WHERE professor.nome LIKE '" +professor+ "%'" 
	# print(consulta)
	iteracaoDosDados(consulta)		


def professorNotas(professor):
	consulta = "SELECT professor.nome, componente_curricular.nome, curso.nome, aluno.nome, nota_avaliacao.nota, nota_avaliacao.avaliacao, nota_avaliacao.observação FROM diario INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc inner join professor on professor.idprofessor = diario.professor_principal inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on matriz_curricular.curso = curso.cod_curso INNER JOIN avaliacao on avaliacao.diario = diario.cod_diario INNER JOIN nota_avaliacao on nota_avaliacao.avaliacao = avaliacao.idavaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno WHERE professor.nome LIKE '" +professor+ "%'" 
	# print(consulta)
	iteracaoDosDados(consulta)	


def professorcurso(professor):
	consulta = "SELECT professor.nome as aluno, curso.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	o avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc  inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on curso.cod_curso = matriz_curricular.curso WHERE professor.nome LIKE '" +professor+ "%'"
	# print(consulta)
	iteracaoDosDados(consulta)		

def professorDependente(professor):
	consulta = "select professor.nome, dependente.nome, from professor join dependente on dependente.professor_ = professor.idprofessor WHERE professor.nome LIKE '" +professor+ "%' "
	print(consulta)
	iteracaoDosDados(consulta)

### Final dos métodos somente para professores ###


def sair():
	print("Fim do programa.")
	exit()

opcao = ''

while opcao != 9:
	menuPrincipal()

alunoNotas(aluno)



