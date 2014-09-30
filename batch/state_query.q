select state, count(state) as c from regiondata group by state order by c desc; 


-- INSERT OVERWRITE DIRECTORY '/user/ubuntu/data/clean/2014'

