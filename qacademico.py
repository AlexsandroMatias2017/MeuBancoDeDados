import mysql.connector

mydb = mysql.connector.connect(
  	host="localhost",#Configure de acordo com seu banco
  	user="matias",     # de dados esta seção.
	passwd="matias",
	database = "" #Chama o banco de dados ja logado.
	#Nesse caso ele ainda não chama nenhum pois, ainda n está criado
)

cursor = mydb.cursor()

#Esta função ela lê o arquivo dump e executa os seus comandos
#para criar o banco de dados.
def executeSql(filename):
	fd = open(filename, 'r')
	sqlFile = fd.read()
	fd.close()
	sqlCommands = sqlFile.split(';')

	for commands in sqlCommands:
		try:
			if commands.strip() != '':
				cursor.execute(commands)
		except IOError as msg:
			print ("Command skipped: ", msg)


executeSql("qacademico_bd1.sql")#nome do arquido Dump.
print("banco de dados criado com sucesso!")