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
	database=""  
   
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

	iteracaoDosDados("show databases")
	# menuPrincipal()

def criarManualDoBanco():
	bancoCriado = input("Digite o Banco de dados a ser criado: ")
	consulta = "create database " + bancoCriado + ";"
	iteracaoDosDados(consulta)

def criacaoBanco():
	executeSql("somenteEstrutura.sql")
	print("banco de dados criado com sucesso!")
	# menuPrincipal()

def insercaoDados():
	executeSql("somenteDados.sql")
	print("banco de dados inseridos com sucesso!")
	# menuPrincipal()

def consultaManual():
	escolherBanco()
	mostrarTabelas()
	consulta = input("Digite manualmente a consulta que gostaria de fazer: ")
	iteracaoDosDados(consulta)



def mostrarTabelas():
	escolherBanco()
	iteracaoDosDados("show tables")
	tabela = input("Escolha uma das tabelas acima:")
	consulta = "select * from  " + tabela
	iteracaoDosDados(consulta)
	# menuPrincipal()


def escolherBanco():
	pesquisarAluno()
	bancoSelecionado = input("Digite o Banco de dados: ")
	consulta = "use " + bancoSelecionado + ";"
	iteracaoDosDados(consulta)

def removerBanco():
	pesquisarAluno()
	bancoSelecionado = input("Digite o Banco de dados a ser removido: ")
	consulta = "drop database " + bancoSelecionado + ";"
	iteracaoDosDados(consulta)

def clonarBanco():
	pesquisarAluno()
	bancoSelecionado = input("Digite o Banco de dados a ser clonado: ")
		

def sair():
	exit()

opcao = ''

while opcao != 9:
	menuPrincipal()
# criacaoBanco()
# insercaoDados()




