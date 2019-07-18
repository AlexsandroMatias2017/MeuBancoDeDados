import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1",#Configure de acordo com seu banco
  	user="root",     # de dados esta seção.
	passwd="",
	database = "qacademico"#aqui você ja chama o banco de dados
						   #pois já está criado
)

cursor = mydb.cursor()
#dados da tabela alunos

#Dados da tabela curso.
sql1 = "INSERT INTO curso (id_curso, nome) VALUES(%s, %s)"
val1 =[
	('1','Ciência de Dados'),
	('2','Tecnólogo em Redes'),
	('3','Tecnólogo Sistemas de Informação'),
	('4','Engenharia da Computação'),
	('5','Licenciatura em Informática'),
	('6','Licenciatura em Matemática'),
	('7','Ciência de Dados'),
	('8','Tecnólogo em Redes'),
	('9','Tecnólogo em Análise em Desenvolvimento de Sistemas'),
	('10','Engenharia da Computação'),
	('11','bacharelado em Informática'),
	('12','bacharelado em Matemática'),
	('13','Ciência de Dados'),
	('14','Engenharia da Automação')
]

#Aqui ele executa o comando sql e passa os valores(val)
cursor.executemany(sql1, val1)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela curso.")

sql = "INSERT INTO alunos (id_curso, nome) VALUES(%s, %s)"
val = [
	('9', 'Alexsandro Matias '),
	('11', 'Dilma Rousseff'),
	('9', 'Erivelton Ramos'),
	('13', 'Albert Einstein'),
	('9', 'Jair Bolsonaro'),
	('10', 'Fernando Haddad'),
	('9', 'Paulo Almeida'),
	('10', 'Gugu Liberato'),
	('9', 'Fausto Silva'),
	('11', 'Geraldo Alckimin'),
	('13', 'Fred Cruger'),
	('13', 'Fernando Henrique Cardoso '),
	('12', 'Luciana Ximenes'),
	('12', 'Fátima Bernades'),
	('11', 'Kid Vinil'),
	('11', 'Casé Pessanha'),
	('14', 'Renato Aragão'),
	('14', 'Sérgio Moro'),
	('14', 'Luiz Inácio'),
	('9', 'Sérgio Malandro'),
	('9', 'Angélica'),
	('10', 'Luciano Hulk'),
	('10', 'Lázaro Ramos'),
	('12', 'Thaís Araújo'),
	('12', 'Wanderson Marques'),
	('9', 'Juares Bráulio'),
	('9', 'Eliane Maria'),
	('10', 'Regina Dos Santos'),
	('11', 'Joselma dos Santos')
]

cursor.executemany(sql, val)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela alunos.")

#dados da tabela disciplina
sql2 = "INSERT INTO disciplina (id_disciplina, id_curso, nome, carga_horaria) VALUES(%s, %s, %s, %s)"
val2 = [
	('1','9', 'Estrutura de Dados', '65'),
	('2','9', 'Banco de Dados 1', '60'),
	('3','9','Banco de Dados 2', '50'),
	('4','9', 'Arquitetura de Computadores', '40'),
	('5','9', 'Sistema Operacionais', '45'),
	('6','9', 'Português Instrumental', '30'),
	('7','9', 'Inglês Instrumental', '25'),
	('8','9', 'Programação Orientada a Objetos', '90'),
	('9','9', 'Desenvolvimento Web 1', '70'),
	('10','9', 'Desenvolvimento Web 2', '70'),
	('11','10', 'Cálculo 1', '120'),
	('12','10', 'Cálculo 2', '100'),
	('13','10', 'Cálculo 3', '85'),
	('14','11', 'Redes 1', '65'),
	('15','11', 'Redes 2', '55'),
	('16','13', 'Sistemas Embarcados', '45'),
	('17','12', 'LIBRAS', '30'),
	('18','14', 'Introdução à Programação', '120'),
	('19','14', 'Ética Profissional', '25'),
	('20','14', 'Cálculo Numérico', '60')
]

cursor.executemany(sql2, val2)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela disciplina.")

#dados da tabela nota

sql3 = "INSERT INTO `nota` (`nota1`, `nota2`, `id_nota`, `id_disciplina`, `id_aluno`) VALUES(%s, %s, %s, %s, %s)"
val3 = [
	('9.0', '8.0', '2', '4', '34'),
	('8.5', '6.0', '3', '1', '30'),
	('3.0', '7.0', '4', '3', '30'),
	('5.0', '5.5', '5', '3', '35'),
	('6.0', '9.9', '6', '3', '36'),
	('6.0', '4.9', '7', '4', '40'),
	('1.0', '6.0', '8', '4', '32'),
	('9.9', '7.0', '9', '5', '50'),
	('7.0', '8.0', '10','9', '37'),
	('8.0', '9.0', '11','7','37'),
	('9.0', '1.0', '12','12','37'),
	('5.0', '2.0', '13','11','38'),
	('6.0', '7.0', '14','10','40'),
	('4.0', '8.5', '15','10','41'),
	('8.0', '7.8', '16','10','38'),
	('2.8', '7.7', '17','10','34'),
	('4.9', '8.8', '18','8','33'),
	('5.5', '9.9', '19','9','43')
]

cursor.executemany(sql3, val3)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela nota.")

#dados da tabela
sql4 = "INSERT INTO `professor` (`id_professor`, `nome`) VALUES(%s, %s)"
val4 = [
	('1', 'Anderson Moreira'),
	('2', 'Paulo Abadie'),
	('3', 'Marcos André'),
	('4', 'Renata Dantas'),
	('5', 'Aida Ferreira'),
	('6', 'Renata Freire'),
	('7', 'Rafael Roque'),
	('8', 'Marco Domingues'),
	('9', 'Paulo Gonçalves'),
	('10', 'Fernanda Celci')
]

cursor.executemany(sql4, val4)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela professor.")

#dados da tabela relacionamento.
#esta tabela relaciona o professor com a disciplina.
sql5 = "INSERT INTO `relacionamento` (`id_professor`, `id_disciplina`) VALUES(%s, %s)"
val5 = [
	('1', '4'),
	('1', '5'),
	('2', '8'),
	('2', '16'),
	('3', '6'),
	('4', '11'),
	('5', '1'),
	('6', '12'),
	('7', '2'),
	('7', '3'),
	('8', '18'),
	('8', '19'),
	('8', '20'),
	('9', '14'),
	('9', '15'),
	('9', '9'),
	('9', '17'),
	('10', '7'),
	('10', '10'),
	('10', '13')
]

cursor.executemany(sql5, val5)
mydb.commit()
print(cursor.rowcount, "dados inseridos na tabela relacionamento.")
