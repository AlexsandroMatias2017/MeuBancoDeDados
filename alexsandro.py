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
	print("1 - Pesquisar sobre determinado aluno.")
	print("2 - Pesquisar sobre determinado professor.")
	print("3 - Pesquisar sobre determinada disciplina.")
	print("4 - Pesquisar sobre determinada matriz curricular")
	print("5 - Pesquisar sobre determinado dependente do professor")
	print("6 - Pesquisar sobre determinado curso")


	
	print("9 - Sair")


	opcao = input("____________________________________________________________________________\n\n")

	if opcao == '1':
		pesquisarAluno()

	if opcao == '2':
		removerBanco()


	if opcao == '3':
		mostrarTabelas()

	if opcao == '4':
		clonarBanco()

	if opcao == '7':
		consultaManual()

	if opcao == '8':
		criarManualDoBanco()


	if opcao == '9':
		sair()

def iteracaoDosDados(sqlc):
   cursor.execute(sqlc)
   for x in cursor:
   	print(x)
   print("____________________________________________________________________________")



def pesquisarAluno():
	aluno = input("Digite o nome do aluno que deseja pesquisar: ")
	print("O que deseja saber sobre o aluno: ")
	print("1 - Quais disciplinas ele está matriculado. ")
	print("2 - Quais quais suas notas. ")
	print("3 - Qual curso ele está matriculado. ")

	if opcao == '1':
		alunoDisciplina(aluno)

	



def mostrarTabelas():
	escolherBanco()
	iteracaoDosDados("show tables")
	tabela = input("Escolha uma das tabelas acima:")
	consulta = "select * from  " + tabela
	iteracaoDosDados(consulta)
	# menuPrincipal()





def alunoDisciplina():
	consulta = "SELECT aluno.nome, nota_avaliacao.nota,avaliacao.unidade FROM nota_avaliacao INNER JOIN aluno on aluno.idaluno = nota_avaliacao.idaluno 	INNER JOIN avaliacao 	ON nota_avaliacao.idavaliacao = avaliacao.idavaliacao 	WHERE aluno.nome LIKE 'alexsandro%';"
	iteracaoDosDados(consulta)		




def sair():
	exit()

opcao = ''

# while opcao != 9:
# 	menuPrincipal()

alunoDisciplina()



