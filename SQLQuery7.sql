Select C.Name,SUM(Energy) UsedEnergy from ES i join Country C on i.CountryID=c.Id group by 
C.Name having SUM(Energy) >10000 order by SUM(Energy) desc