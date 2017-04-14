select stv_tbl_perm.name as table, count(*) as mb
from stv_blocklist, stv_tbl_perm
where stv_blocklist.tbl = stv_tbl_perm.id
and stv_blocklist.slice = stv_tbl_perm.slice
and stv_tbl_perm.name in ('lineorder','part','customer','dwdate','supplier')
group by stv_tbl_perm.name
order by 1 asc;