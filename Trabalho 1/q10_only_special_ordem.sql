select count(c.c_custkey) as c_quant 
from customer as c
join orders as o on o.o_custkey = c.c_custkey
where o.o_comment LIKE '%special request%'
and o.o_comment NOT LIKE '%unusual package%';
