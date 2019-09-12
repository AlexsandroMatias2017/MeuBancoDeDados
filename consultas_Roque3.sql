


SELECT *
FROM nota_avaliacao
INNER JOIN aluno
on aluno.idaluno = nota_avaliacao.idaluno
INNER JOIN avaliacao
ON nota_avaliacao.idavaliacao = avaliacao.idavaliacao
where aluno.nome like  'josiane%'

