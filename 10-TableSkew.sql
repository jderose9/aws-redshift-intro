select trim(name) as table, slice, sum(num_values) as rows, min(minvalue), max(maxvalue)
from svv_diskusage
where name in ('customer', 'part', 'supplier', 'dwdate', 'lineorder') 
and col =0
group by name, slice
order by name, slice;