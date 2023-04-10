/*
Problem 1.9
Do the same as question 1.7 but this time only include trunks that have at least one 'IDLE' channel. 
That is, write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, 
office code 334 have at least one idle channel. This query should list the trunks in the order of preference. (The answer should list trunks routes 416,334 
then 416,000 then 000,000 for example)
*/

DROP TABLE IF EXISTS acceptableTrunks;
drop table if exists idleTrunks;
drop table if exists idleTrunksFinal;
create table idleTrunksFinal (
    trunk text,
    trunkState text
);
create table idleTrunks (
    trunkState text
);
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

insert into idleTrunks select
case
when channels.state = 'IDLE' then portid
end
from channels;

insert into idleTrunksFinal select idleTrunks.trunkState, acceptableTrunks.trunks
from idleTrunks
inner join acceptableTrunks on idleTrunks.trunkState = acceptableTrunks.trunks;

select * from acceptableTrunks;
select * from idleTrunks;
select * from idleTrunksFinal;

/*
Test Output:
trunk       trunkState
----------  ----------
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
102         102       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
106         106       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107       
107         107  
*/