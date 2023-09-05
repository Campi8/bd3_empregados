create view vw_emp_idade_dep_campi
as 
SELECT
	emp.nome as empregado,
    format(datediff(now(), emp.dt_admissao) /365,0) as tempo_empresa,
	format(datediff(now(), emp.dt_nascimento) /365,0) as idade_empregado,
	emp.salario as renda,
    emp.sexo as sexo,
    dep.nome as dependente,
	format(datediff(now(), dep.dt_nascimento) /365,0) as idade_dependente,
    dep.sexo as sexo_dependente,
    dep.dt_nascimento as dep_dt_nascimento
    
FROM
	empregado emp,
    dependente dep
WHERE
    emp.cod_emp = dep.cod_emp;