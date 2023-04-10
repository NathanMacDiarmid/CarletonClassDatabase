/*
Problem 1.5
Find the names of all the subscribers who subscribe to at least three services.
*/

DROP TABLE IF EXISTS varTable;
DROP TABLE IF EXISTS varTable2;
DROP TABLE IF EXISTS final;
CREATE TABLE varTable (
    subName text,
    subAddress text,
    serviceCode text
);
CREATE TABLE varTable2 (
    name text,
    code text
);
CREATE TABLE final (
    finalName text
);

INSERT INTO varTable SELECT subscribers.name, subscribers.address, services.scode
FROM subscribers 
    INNER JOIN service_subscribers ON service_subscribers.portid = subscribers.portid
    INNER JOIN services ON service_subscribers.service = services.scode;

INSERT INTO varTable2
SELECT subName, COUNT(varTable.serviceCode) FROM varTable
GROUP BY subName;

select
case
when varTable2.code >= 3 then name
end
from varTable2;

/*
Test Output:
-------------------------------------------
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
Chris Pronger                              
                                           
                                           
                                           
Frank Thomas                               
                                           
                                           
                                           
                                           
Homer Simpson                              
                                           
                                           
Joe Carter                                 
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
Matt Stajan                                
Michael Jordan                             
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
                                           
Steve Sampras                              
                                           
                                           
                                           
Vince Carter                               
                                           
    
*/