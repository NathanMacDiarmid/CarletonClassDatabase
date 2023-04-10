/*
Problem 1.6
Produce a table that lists the most popular service (or services). That is, give the name of the service that has the most subscribers.
*/

DROP TABLE IF EXISTS popularServices;
CREATE TABLE popularServices (
    serviceCount text,
    serviceCode text,
    serviceName text
);

insert into popularServices
select count(service_subscribers.service) as `var`, service_subscribers.service as `var2`, services.service
from service_subscribers
inner join services on services.scode = `var2`
group by service_subscribers.service
order by `var` desc;

select * from popularServices;


/*
Test Output:
serviceCount  serviceCode  serviceName   
------------  -----------  --------------
25            MSG          Message Answer
20            CWT          Call Waiting  
17            CFB          Call Forward B
16            DSP          Call Number Di
12            3WC          Conference Cal
*/