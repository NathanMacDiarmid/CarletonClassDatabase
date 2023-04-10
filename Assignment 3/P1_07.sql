/*
Problem 1.7
Write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334. 
This query should list the trunks in the order of preference. 
(The answer should list trunks with routes 416,334 then those with 416,000 and then those with 000,000 for example)
*/

DROP TABLE IF EXISTS acceptableTrunks;
CREATE TABLE acceptableTrunks (
    trunks text
);

insert into acceptableTrunks select
case
when area || '-' || office = '416-334' then portid
when area || '-' || office = '416-000' then portid
when area || '-' || office = '000-000' then portid
end
from trunk_routes;

select * from acceptableTrunks;

/*
Test Output:
trunks    
----------
          
          
          
          
          
          
          
          
          
          
          
          
102       
          
102       
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
106       
          
          
          
107       
          
          
          
          

*/