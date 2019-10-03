import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1",
  	user="root",
	passwd="",
	database = "" #Chama o banco de dados ja logado.
)

cursor = mydb.cursor()

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


executeSql("echos_bd1.sql")
print("banco de dados criado com sucesso!")
