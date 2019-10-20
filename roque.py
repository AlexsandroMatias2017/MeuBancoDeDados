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
	print("1 - Visualizar os Bancos de Dados existentes.")
	print("2 - Remover um Banco de Dados.")
	print("3 - Consultar uma tabela específica de um Banco de Dados.")
	print("4 - Clonar um Banco de Dados.")
	print("7 - Realizar uma consulta manualmente ao Banco de Dados. ")
	print("8 - Criar um Banco de Dados. ")
	print("9 - Sair")


	opcao = input("____________________________________________________________________________\n\n")

	if opcao == '1':
		mostrarBancos()

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



def mostrarBancos():
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
	consulta = input("Digite manualmente a consulta que gostaria de fazer")
	iteracaoDosDados()



def mostrarTabelas():
	escolherBanco()
	iteracaoDosDados("show tables")
	tabela = input("Escolha uma das tabelas acima:")
	consulta = "select * from  " + tabela
	iteracaoDosDados(consulta)
	# menuPrincipal()


def escolherBanco():
	mostrarBancos()
	bancoSelecionado = input("Digite o Banco de dados: ")
	consulta = "use " + bancoSelecionado + ";"
	iteracaoDosDados(consulta)

def removerBanco():
	mostrarBancos()
	bancoSelecionado = input("Digite o Banco de dados a ser removido: ")
	consulta = "drop database " + bancoSelecionado + ";"
	iteracaoDosDados(consulta)

def clonarBanco():
	mostrarBancos()
	bancoSelecionado = input("Digite o Banco de dados a ser clonado: ")
		

def sair():
	exit()

opcao = ''

while opcao != 9:
	menuPrincipal()
# criacaoBanco()
# insercaoDados()
# 



