import mysql.connector

conexao = mysql.connector.connect(
    host="localhost", 
    user="matias",  
    passwd="matias",
<<<<<<< HEAD
    database=""  
   
=======
    database="roque"  # Chama o banco de dados ja logado.
    # Nesse caso ele ainda não chama nenhum pois, ainda n está criado
>>>>>>> d6ba7da6db531ae9d6fc31355a5c285a9e61b61b
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


<<<<<<< HEAD

#def iteracaoDosDados():
#    for x in cursor:
#        print(x)

def criacaoBanco():
    executeSql("somenteEstrutura.sql")
    print("banco de dados criado com sucesso!")

def insercaoDados():
    executeSql("somenteDados.sql")
    print("banco de dados criado com sucesso!")


def mostrarBancos():
    cursor = conexao.cursor()
    cursor.execute("show databases")
    for x in cursor:
        print(x)

def escolherBanco():
    mostrarBancos()
    bancoSelecionado = input("Digite o Banco de dados: ")
    print("%s selecionado." , bancoSelecionado)


escolherBanco()


        
#def mostrarTabelas():
#    cursor = conexao.cursor()
#    cursor.execute("show tables")
#    for x in cursor:
#        print(x)

#mostrarBancos()


# criacaoBanco()
# insercaoDados()
#mostrarTabelas()
=======
def criacaoDeEstrutura():
	executeSql("somenteEstrutura.sql")
	print("banco de dados criado com sucesso!")

def populacaoDados():
	executeSql("dados.sql")
	print("Dados inseridos com sucesso!")
	
	
criacaoDeEstrutura()
populacaoDados()
	

# print("O que deseja:")
>>>>>>> d6ba7da6db531ae9d6fc31355a5c285a9e61b61b




