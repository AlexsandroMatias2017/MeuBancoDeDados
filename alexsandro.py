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
	print("6 - Pesquisar sobre determinado curso")	
	print("9 - Sair")
	opcao = input("____________________________________________________________________________\n\n")

	if opcao == '1':
		pesquisarAluno()
	
	if opcao == '2':
		pesquisarProfessor()

	if opcao == '3':
		pesquisarcomponente()




	if opcao == '6':
		pesquisarCurso()


	if opcao == '9':
		sair()

def iteracaoDosDados(sqlc):

   cursor.execute(sqlc)   
   vazia = 1
   for x in cursor:
      vazia = 0
      print(x)
   else:
      if vazia:
         print("Nenhum resultado encontrado")
   print("____________________________________________________________________________")



### Início dos métodos somente para alunos ###

def pesquisarAluno():
	aluno = input("Digite o nome do aluno(a) que deseja pesquisar: ")
	buscaAlunoInicial(aluno)
	matriculaAluno = input("Digite a matrícula do aluno(a) que deseja pesquisar: ")
	print("O que deseja saber sobre o aluno(a): ")
	print("1 - Quais disciplinas ele está matriculado(a). ")
	print("2 - Quais suas notas. ")
	print("3 - Qual curso ele está matriculado(a). ")
	opcao = input("____________________________________________________________________________\n\n")


	if opcao == '1':
		alunoDisciplina(matriculaAluno)

	if opcao == '2':
		alunoNotas(matriculaAluno)

	if opcao == '3':
		alunocurso(matriculaAluno)

def buscaAlunoInicial(aluno):
	consulta = "SELECT aluno.nome, aluno.matricula from aluno WHERE aluno.nome LIKE '%"+aluno+"%'"
	# print(consulta)
	iteracaoDosDados(consulta)		


def alunoDisciplina(matricula):
	
	consulta = "SELECT aluno.nome, componente_curricular.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE aluno.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)		


def alunoNotas(matricula):
	consulta = "SELECT aluno.nome as aluno, avaliacao.data_avaliacao, nota_avaliacao.nota, diario.turno, professor.nome, componente_curricular.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE aluno.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)	

	
def alunocurso(matricula):
	consulta = "SELECT aluno.nome as aluno, curso.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc  inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on curso.cod_curso = matriz_curricular.curso WHERE aluno.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)		

### Final dos métodos somente para alunos ###

##################


### Início dos métodos somente para professores ###

def pesquisarProfessor():
	professor = input("Digite o nome do professor que deseja pesquisar: ")
	buscaProfessorInicial(professor)
	professor = input("Digite o SIAPE do professor(a) que deseja pesquisar: ")
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

def buscaProfessorInicial(professor):
	consulta = "SELECT professor.nome, professor.siape from professor WHERE professor.nome LIKE '%"+professor+"%'"
	# print(consulta)
	iteracaoDosDados(consulta)		

def professorDisciplina(siape):
	consulta = "SELECT professor.nome, componente_curricular.nome, curso.nome FROM diario INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc inner join professor on professor.idprofessor = diario.professor_principal inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on matriz_curricular.curso = curso.cod_curso WHERE professor.siape = " +siape 
	# print(consulta)
	iteracaoDosDados(consulta)		


def professorNotas(siape):
	consulta = "SELECT professor.nome, componente_curricular.nome, curso.nome, aluno.nome, nota_avaliacao.nota, nota_avaliacao.avaliacao, nota_avaliacao.observação FROM diario INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc inner join professor on professor.idprofessor = diario.professor_principal inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on matriz_curricular.curso = curso.cod_curso INNER JOIN avaliacao on avaliacao.diario = diario.cod_diario INNER JOIN nota_avaliacao on nota_avaliacao.avaliacao = avaliacao.idavaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno  WHERE professor.siape = " +siape
	# print(consulta)
	iteracaoDosDados(consulta)	


def professorcurso(siape):
	consulta = "SELECT professor.nome as aluno, curso.nome FROM nota_avaliacao INNER JOIN aluno on aluno.cod_aluno = nota_avaliacao.aluno INNER join avaliacao 	o avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc  inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on curso.cod_curso = matriz_curricular.curso  WHERE professor.siape = " +siape
	# print(consulta)
	iteracaoDosDados(consulta)		

def professorDependente(siape):
	consulta = "select professor.nome, dependente.nome, from professor join dependente on dependente.professor_ = professor.idprofessor WHERE professor.nome  WHERE professor.siape = " +siape
	print(consulta)
	iteracaoDosDados(consulta)

### Final dos métodos somente para professores ###




### Início dos métodos somente para componentes curriculares (disciplinas)###

def pesquisarcomponente():
	componente = input("Digite o nome do disciplina que deseja pesquisar: ")
	buscacomponenteInicial(componente)
	codigoComponente = input("Digite o código do componente que deseja pesquisar: ")
	print("O que deseja saber sobre o componente(a): ")
	print("1 - Quais disciplinas são ministradas para determinados alunos(as). ")
	print("2 - Quais suas notas foram atribuídas em determinadas disciplinas. ")
	print("3 - Quais cursos estão vinculados à determinada disciplinas. ")
	opcao = input("____________________________________________________________________________\n\n")


	if opcao == '1':
		componenteDisciplina(codigoComponente)

	if opcao == '2':
		componenteNotas(codigoComponente)

	if opcao == '3':
		componentecurso(codigoComponente)

def buscacomponenteInicial(componente):
	consulta = "SELECT componente_curricular.cod_cc, componente_curricular.sigla, componente_curricular.nome from componente_curricular WHERE componente_curricular.nome LIKE '%"+componente+"%'"
	# print(consulta)
	iteracaoDosDados(consulta)		


def componenteDisciplina(matricula):
	
	consulta = "SELECT componente.nome, componente_curricular.nome FROM nota_avaliacao INNER JOIN componente on componente.cod_componente = nota_avaliacao.componente INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE componente.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)		


def componenteNotas(matricula):
	consulta = "SELECT componente.nome as componente, avaliacao.data_avaliacao, nota_avaliacao.nota, diario.turno, professor.nome, componente_curricular.nome FROM nota_avaliacao INNER JOIN componente on componente.cod_componente = nota_avaliacao.componente INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc 	WHERE componente.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)	


def componentecurso(matricula):
	consulta = "SELECT componente.nome as componente, curso.nome FROM nota_avaliacao INNER JOIN componente on componente.cod_componente = nota_avaliacao.componente INNER join avaliacao 	on avaliacao.idavaliacao = nota_avaliacao.avaliacao INNER JOIN diario on avaliacao.diario = diario.cod_diario INNER JOIN professor on professor.idprofessor = diario.professor_principal INNER JOIN componente_curricular on diario.componente = componente_curricular.cod_cc  inner join matriz_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join curso on curso.cod_curso = matriz_curricular.curso WHERE componente.matricula = " +matricula
	# print(consulta)
	iteracaoDosDados(consulta)		

### Final dos métodos somente para componentes curriculares(disciplinas) ###




### Início dos métodos somente para curso ###

def pesquisarCurso():
	curso = input("Digite o nome do curso que deseja pesquisar: ")
	buscaCursoInicial(curso)
	codigoCurso = input("Digite o código do curso que deseja pesquisar: ")
	print("O que deseja saber sobre o curso: ")
	print("1 - Quais alunos(as) estão matriculados num determinado curso. ")
	print("2 - Quais professores(as) estão vinculados a um curso. ")
	opcao = input("____________________________________________________________________________\n\n")


	if opcao == '1':
		cursoAluno(codigoCurso)

	if opcao == '2':
		cursoProfessor(codigoCurso)

	
def buscaCursoInicial(curso):
	consulta = "SELECT curso.cod_curso, curso.nome from curso WHERE curso.nome LIKE '%"+curso+"%'"
	# print(consulta)
	iteracaoDosDados(consulta)		

def cursoAluno(curso):
	consulta = "SELECT distinct curso.cod_curso,curso.nome,aluno.nome from curso inner join matriz_curricular on matriz_curricular.curso = curso.cod_curso inner join componente_curricular on componente_curricular.matriz = matriz_curricular.cod_matriz inner join diario on diario.componente = componente_curricular.cod_cc inner join turma on diario.cod_diario = turma.diario inner join matriculas_componente on matriculas_componente.turma = turma.cod_turma inner join aluno on matriculas_componente.aluno = aluno.cod_aluno WHERE curso.cod_curso  = " +curso 
	# print(consulta)
	iteracaoDosDados(consulta)		


### Final dos métodos somente para curso ###




def sair():
	print("Fim do programa.")
	exit()

opcao = ''

while opcao != 9:
	menuPrincipal()
# aluno = "alexsandro"
# buscaAlunoInicial(aluno)


