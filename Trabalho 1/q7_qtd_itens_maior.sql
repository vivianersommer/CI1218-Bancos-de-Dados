select n.n_name, sum(l.l_quantity) as sum_quant 
from nation as n
join customer as c on n.n_nationkey = c.c_nationkey
join orders as o on c.c_custkey=o.o_custkey
join lineitem as l on o.o_orderkey = l.l_orderkey
group by n.n_name having sum_quant>62000 
order by sum_quant DESC;
