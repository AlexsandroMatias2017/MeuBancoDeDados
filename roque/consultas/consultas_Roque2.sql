SELECT aluno.nome, nota_avaliacao.nota,avaliacao.unidade,lista_avaliacao_unidade.unidade, 
FROM nota_avaliacao 
INNER JOIN aluno
on aluno.idaluno = nota_avaliacao.idaluno
INNER JOIN avaliacao
ON nota_avaliacao.idavaliacao = avaliacao.idavaliacao

inner join avaliacao_diario
on avaliacao_diario.idavaliacao = avaliacao.idavaliacao

inner join lista_avaliacao_unidade
on lista_avaliacao_unidade.idlista_avaliacao_unidade = avaliacao_diario.id_avaliacao_unidade
where aluno.nome like 'josiane%'

