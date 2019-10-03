import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1",
  	user="root",
	passwd="",
	database = "echos"
)

cursor = mydb.cursor()

#pesquisa os usuários que iniciam com a letra 'C'
print("Primeira pesquisa:  \n")
print("SELECT * FROM `contato` WHERE `id_usuario` = '3'")
sql1 = "SELECT * FROM `contato` WHERE `id_usuario` = '3'"

cursor.execute(sql1)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#Pesquisa os sensores de temperatura.
print("\nsegunda pesquisa:    \n")
print("SELECT * FROM `usuario` ORDER BY nome")
sql2 = "SELECT * FROM `usuario` ORDER BY nome"

cursor.execute(sql2)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#pesquisando o relacionamento de usuário e sensor 
print("\nterceira pesquisa:  \n")
print("SELECT estacao as estacao, nome as nome from sensor s join estacao e on e.id_sensor = s.id_sensor join usuario u on e.id_usuario = u.id_usuario")
sql3 = "SELECT estacao as estacao, nome as nome from sensor s join estacao e on e.id_sensor = s.id_sensor join usuario u on e.id_usuario = u.id_usuario"

cursor.execute(sql3)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

print("\nquarta pesquisa:  \n")
print("SELECT v_temp as v_temp, id_sensor as id_sensor from medicao m join sensor s on s.id_medicao = m.id_medicao")
sql4 = "SELECT v_temp as v_temp, id_sensor as id_sensor from medicao m join sensor s on s.id_medicao = m.id_medicao"




cursor.execute(sql4)
myresult = cursor.fetchall()
for x in myresult:
  print(x)



print("\nquinta pesquisa:  \n")
print("SELECT momento from medicao where id_medicao = 5")
sql5 = "SELECT momento from medicao where id_medicao = 5"

cursor.execute(sql5)
myresult = cursor.fetchall()
for x in myresult:
  print(x)