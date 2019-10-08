import mysql.connector

conexao = mysql.connector.connect(
    host="localhost",  # Configure de acordo com seu banco
    user="matias",  # de dados esta seção.
    passwd="matias",
    database="roque"  # Chama o banco de dados ja logado.
    # Nesse caso ele ainda não chama nenhum pois, ainda n está criado
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


def criacaoDeEstrutura():
	executeSql("somenteEstrutura.sql")
	print("banco de dados criado com sucesso!")

def populacaoDados():
	executeSql("dados.sql")
	print("Dados inseridos com sucesso!")
	
	
criacaoDeEstrutura()
populacaoDados()
	

# print("O que deseja:")




