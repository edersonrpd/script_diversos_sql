select 
* 
from 
Ourobase..Tab_ErroNFE a
where 
a.dte_DataHora >= '2022-08-09'  -- aaaa-mm-dd
order by
a.dte_DataHora desc