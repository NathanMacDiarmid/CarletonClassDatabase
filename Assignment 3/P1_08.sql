/*
Problem 1.8
Write an SQL query that would find if the line with phone number (613) 712-0024 is currently available to take a call because its channel is IDLE. 
That is, select the portid, directory number, and channel state of line (613) 712-0024.
*/

drop table if exists p1_08;
drop table if exists p1_082;
create table p1_082 (
    phoneState text
);
create table p1_08 (
    portid text
);

insert into p1_08 select
case
when areacode || '-' || officecode || '-' || stationcode = '613-712-0024' then portid
end
from lines;

insert into p1_082 select channels.state
from p1_08 
inner join channels on p1_08.portid = channels.portid;

select * from p1_082;

/*
Test Output:
phoneState
----------
BUSY     
*/