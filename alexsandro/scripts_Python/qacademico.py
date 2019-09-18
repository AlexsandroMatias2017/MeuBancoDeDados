import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1"
  	user="root",     
	passwd="",
	database = ""
	#Nesse caso ele ainda não chama nenhum pois, ainda n está criado
)

cursor = mydb.cursor()

#Esta função ela lê o arquivo dump e executa os seus comandos
#para criar o banco de dados.
def executeSql(filename):
	arquivo = open(filename, 'r')
	sqlFile = arquivo.read()
	arquivo.close()
	sqlCommands = sqlFile.split(';')

	for commands in sqlCommands:
		try:
			if commands.strip() != '':
				cursor.execute(commands)
		except IOError as msg:
 			print ("Comando falhou: ", msg)


executeSql("qacademico_bd1.sql")#nome do arquido Dump.
print("banco de dados criado com sucesso!")




'''

# pelo professor

import mysql.connector

meubanco = mysql.connector.connect(
  host="localhost",
  user="seuNomeDeUsuario",
  passwd="aSuaSenhadeAcesso",
  database="oNomeDoSeuBanco"
)

meucursor = meubanco.cursor()

def executarSqlDoArquivo(nomeArquivo, cursor):
    arquivo = open(filename, 'r')
    arquivoLido = fd.read()
    arquivo.close()
    comandosSql = arquivoLido.split(';')

    for comando in comandosSql:
        try:
            if comando.strip() != '':
                cursor.execute(comando)

        except IOError as msg:
            print ("Comando falhou: ", msg)


executarSqlDoArquivo("teste.sql", meucursor)
meubanco.commit()

'''
