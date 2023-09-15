create view vw_empregados_aumentoRenda_campi
as
select 
	emp.nome as empregado,
    emp.salario as renda,
    count(dep.cod_dep) as dependente,
case
	when emp.salario (5 * 1320) then (emp.salario * 1.05)
	when emp.salario (3 * 1320) and count(dep.cod_dep) <=1 then emp.salario = 1.12
    
    end as aumento
from 
	empregado emp,
	dependente dep