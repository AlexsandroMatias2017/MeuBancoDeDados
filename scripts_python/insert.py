import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1",
  	user="root",
	passwd="",
	database = "echos"
)

cursor = mydb.cursor()
#dados da tabela usuario
sql = "INSERT INTO usuario (hash_senha, nome, email, estado, cidade) VALUES(%s, %s, %s, %s, %s)"  
val = [
	('23456868','Charlie','charlinhos@gmail.com','Pernambuco','Recife'),
	('227272','Zé','zeca.12@hotmail.com','Pernambuco','Vitória'),
	('23456868','Carlos','chsf@a.recife.ifpe.edu.br','Pernambuco','Recife'),
	('92848484','Ana','aninha20@yahoo.com', 'Pernambuco','Recife'),
	('23456368','Severino','ss@ifpe.com','Pernambuco','Jaboatao'),
	('23456468','Josias','jjs@gmail.com','Pernambuco','Recife'),
	('23456568','Gustavo','guguinha@gmail.com','Pernambuco','Recife'),
	('57286668','Bolinaldo','bolinha@yahoo.com','Pernambuco','Olinda'),
	('57286768','Paulo','phs@ifpe.br','Pernambuco','Olinda'),
	('57286868','Ricardo','rico@hotmail.com','Pernambuco','Olinda')
]

cursor.executemany(sql, val)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela usuario.")

#dados da tabela contatos
sql1 = "INSERT INTO contato VALUES(%s, %s)"  
val = [
	('1', '30023333'),
	('2', '994443323'),
	('3', '24549768'),
	('4', '33615133'),
	('5', '34687610'),
	('6', '32329920'),
	('7', '34745585'),
	('8', '32234454'),
	('9', '999993312'),
	('10', '998895555'),
	('3', '32334355')
]

cursor.executemany(sql1, val)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela contato.")



#dados da tabela sensor
sql2 = "INSERT INTO medicao (id_medicao, v_temp, v_umid, v_lumi) VALUES(%s, %s, %s, %s) "
val2 =[
	('1','30.00', '72.78','80.00',),
	('2', '29.90', '72.78','80.00'),
	('3', '26.50', '72.78','80.00'),
	('4', '81.50', '72.78','80.00'),
	('5', '85.60', '72.78','80.00'),
	('6', '21.78', '72.78','80.00'),
	('7', '92.38', '72.78','80.00'),
	('8', '30.20', '72.78','80.00'),
	('9', '22.33', '72.78','80.00'),
	('10','92.87', '72.78','80.00')
]

cursor.executemany(sql2, val2)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela sensor.")
#dados da tabela sensor
sql4 = "INSERT INTO sensor(id_sensor, estacao, area, id_medicao) VALUES(%s, %s, %s, %s)"  
val = [
	('1','arroz','-8.066864,-34.944047','1'),
	('2','arroz','-8.066864,-34.944047','2'),
	('3','feijão','-8.066864,-34.944047','3'),
	('4','fava','-8.066864,-34.944047','4'),
	('5','laranja','-8.066864,-34.944047','5'),
	('6','limão','-8.066864,-34.944047','6'),
	('7','uva','-8.066864,-34.944047','7'),
	('8','batata','-8.066864,-34.944047','8'),
	('9','alface','-8.066864,-34.944047','9'),
	('10','alface','-8.066864,-34.944047','10')
]

cursor.executemany(sql4, val)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela sensor.")
#dados da tabela estação
sql3 = "INSERT INTO estacao(id_sensor, id_usuario) VALUES(%s, %s)"  
val = [
	('1','1'),
	('2','2'),
	('3','3'),
	('4','4'),
	('5','5'),
	('6','6'),
	('7','7'),
	('8','8'),
	('9','9'),
	('10','10')
]

cursor.executemany(sql3, val)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela estação.")