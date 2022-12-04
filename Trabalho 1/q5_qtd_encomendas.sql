select n.n_name, count(o.o_orderkey) as num_orders 
from nation as n
join customer as c on n.n_nationkey = c.c_nationkey
join orders as o on c.c_custkey=o.o_custkey 
group by n.n_name 
order by num_orders DESC;
