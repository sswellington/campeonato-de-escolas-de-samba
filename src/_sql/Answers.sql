#ordem de desfile
SELECT esc.nome, inte.data_desfile, inte.hora_inicio, inte.grupo
FROM Integrante AS inte JOIN Escola AS esc ON inte.CNPJ = esc.CNPJ 
WHERE UPPER(inte.estado) = UPPER('rJ') AND inte.ano = 2015 
ORDER BY inte.data_desfile, inte.hora_inicio;

#pessoas que assistiram um campeonato
SELECT p.nome
FROM SEI AS s JOIN Pessoa AS p ON s.CPF_Espectador = p.CPF
WHERE s.ano=2015 AND UPPER(s.estado)='RJ' 
AND s.numero_setores = 1;

# Duranção de desfile das escolas em um campeonato.
SELECT e.nome, TIME(i.hora_fim - i.hora_inicio) 
AS Duração, i.hora_fim, i.hora_inicio
FROM Integrante AS i JOIN Escola AS e ON i.CNPJ = e.CNPJ
WHERE UPPER(i.ESTADO) = UPPER('RJ');

#capacidade dos sambodromo
SELECT sa.nome, sum(se.capacidade) AS Capacidade
FROM Setores AS se JOIN Sambodromo AS sa 
ON se.id_sambodromo = sa.id 
GROUP BY (sa.id);
