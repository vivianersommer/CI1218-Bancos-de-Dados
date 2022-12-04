select count(*) 
from customer as c 
where c.c_custkey not in (select o.o_custkey from orders as o);
