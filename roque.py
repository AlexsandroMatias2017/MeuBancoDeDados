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
    print("1 - Consultar um Banco de Dados.")
    print("2 - Remover um Banco de Dados.")
    print("3 - Consultar uma tabela específica de um Banco de Dados.")
    print("4 - Clonar um Banco de Dados.")


    opcao = input("____________________________________________________________________________\n\n")

    if opcao == '1':
        mostrarBancos()

    if opcao == '2':
        removerBanco()


    if opcao == '3':
        mostrarTabelas()

    if opcao == '4':
        clonarBanco()


def iteracaoDosDados(sqlc):
   cursor.execute(sqlc)
   for x in cursor:
      print(x)

def criacaoBanco():
    executeSql("somenteEstrutura.sql")
    print("banco de dados criado com sucesso!")

def insercaoDados():
    executeSql("somenteDados.sql")
    print("banco de dados inseridos com sucesso!")


def mostrarBancos():
    iteracaoDosDados("show databases")

def mostrarTabelas():
    escolherBanco()
    iteracaoDosDados("show tables")
    tabela = input("Escolha uma das tabelas acima:")
    consulta = "select * from  " + tabela
    iteracaoDosDados(consulta)

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
    



# menuPrincipal()
criacaoBanco()
insercaoDados()




