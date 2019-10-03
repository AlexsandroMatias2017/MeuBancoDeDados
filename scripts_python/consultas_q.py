import mysql.connector

mydb = mysql.connector.connect(
  	host="127.0.0.1",#Configure de acordo com seu banco
  	user="maias",     # de dados nesta seção.
	passwd="matias",
	database = "qacademico"
)

cursor = mydb.cursor()

#pesquisa o nome e o id do aluno com o id_aluno = 37.
print("Primeira pesquisa:  \n")
print("SELECT nome, id_aluno FROM `alunos` WHERE `id_aluno` = '37'")
sql1 = "SELECT nome, id_aluno FROM `alunos` WHERE `id_aluno` = '37'"

#aqui ele vai executar e pegar o resultado da pesquisa.
cursor.execute(sql1)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#Pesquisa a lista de professores ordenada pelo nome.
print("\nsegunda pesquisa:    \n")
print("SELECT * FROM `professor` ORDER BY nome")
sql2 = "SELECT * FROM `professor` ORDER BY nome"

cursor.execute(sql2)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#relaciona o nome do professor com sua disciplina. 
print("\nterceira pesquisa:  \n")
print("SELECT p.nome as professor, d.nome as disciplina from professor as p join relacionamento as r on p.id_professor = r.id_professor join disciplina as d on r.id_disciplina = d.id_disciplina")
sql3 = "SELECT p.nome as professor, d.nome as disciplina from professor as p join relacionamento as r on p.id_professor = r.id_professor join disciplina as d on r.id_disciplina = d.id_disciplina"

cursor.execute(sql3)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#Pesquisa as notas e a média de cada aluno.
print("\nquarta pesquisa:  \n")
print("SELECT alunos.nome, disciplina.nome, nota.nota1, nota.nota2, ((nota.nota1 + nota.nota2)/2) as media from nota join disciplina on disciplina.id_disciplina = nota.id_disciplina join alunos on alunos.id_aluno = nota.id_aluno ORDER BY media desc")
sql4 = "SELECT alunos.nome, disciplina.nome, nota.nota1, nota.nota2, ((nota.nota1 + nota.nota2)/2) as media from nota join disciplina on disciplina.id_disciplina = nota.id_disciplina join alunos on alunos.id_aluno = nota.id_aluno ORDER BY media desc"

cursor.execute(sql4)
myresult = cursor.fetchall()
for x in myresult:
  print(x)

#Pesquisa o nome do curso com o id_curso = 9.
print("\nquinta pesquisa:  \n")
print("SELECT nome from curso where id_curso = 9")
sql5 = "SELECT nome from curso where id_curso = 9"

cursor.execute(sql5)
myresult = cursor.fetchall()
for x in myresult:
  print(x)
