SELECT aluno.nome, nota_avaliacao.nota,avaliacao.unidade
FROM nota_avaliacao  
INNER JOIN aluno
on aluno.idaluno = nota_avaliacao.idaluno
INNER JOIN avaliacao
ON nota_avaliacao.idavaliacao = avaliacao.idavaliacao
WHERE aluno.nome LIKE 'alexsandro%'
