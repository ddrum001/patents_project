select city, count(city) as c from citydata group by city order by c;
