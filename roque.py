# sudo install python-pip
# sudo apt install python-pip
# pip install mysql-conector
# pip install pip3
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
    cursor.execute("use" + bancoSelecionado)


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




