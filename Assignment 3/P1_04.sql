/*
Problem 1.4
Find the names and address of all subscribers who subscribe to all of the available services. 
(Note the result for the current data might be empty but your query should work if the TA's add more data to the databse.).
*/

DROP TABLE IF EXISTS varTable;
DROP TABLE IF EXISTS varTable2;
CREATE TABLE varTable (
    subName text,
    subAddress text,
    serviceCode text
);
CREATE TABLE varTable2 (
    subName text,
    subAddress text,
    serviceCode text
);

INSERT INTO varTable SELECT subscribers.name, subscribers.address, services.scode
FROM subscribers 
    INNER JOIN service_subscribers ON service_subscribers.portid = subscribers.portid
    INNER JOIN services ON service_subscribers.service = services.scode;

INSERT INTO varTable2
SELECT subName, subAddress, COUNT(varTable.serviceCode) FROM varTable
GROUP BY subName;

--if serviceCode >= 5 select these
--couldn't solve

select * from varTable2;

/*
Test Output:
Alex Mogily|1129 14th Ave.|1
Babe Ruth|1 Old Kennedy.|2
Barry Bonds|23 Hood Rd.|1
Bart Simpson|155 Moodie Dr.|2
Bobby Hull|23 Wellington St.|1
Bobby Orr|48 Prince Edward St.|1
Brooke Shields|69 College Ave.|1
Bryan MacCabe|23 MacLeod St.|2
Chris Bosh|46 Queens Ave.|2
Chris Pronger|48 16th Ave.|3
Ed Belfour|46 Fisher St.|1
Eric Lindros|48 Elgin St.|2
Eric Staal|423 Riverside Drive.|2
Frank Thomas|14 Hull Ave.|3
Gary Roberts|23 John St.|2
George Bell|46 Colon By Dr.|2
Gordie Howe|1129 Preston Dr.|2
Hank Aaron|55 Denison Ave.|2
Homer Simpson|123 Prince of Wales Dr.|3
Jack Morris|23 Prince of Wales Dr.|1
Jason Allison|46 Elgin St.|2
Joe Carter|18 Summerset East.|3
Joe Johnson|21 Sussex Dr.|1
Kevin Garnett|59 Mike Myers Dr.|2
Kobe Bryan|23 Bayview St.|1
Larry Brown|99 Blue Jays Ave.|2
Mario Lemieux|1129 Bank Dr.|2
Mark Messier|14 Finch Ave.|2
Martin Brodeur|14 Baseline Ave.|1
Mats Sundin|45 Elgin St.|2
Matt Stajan|50 LakeShore Ave.|3
Michael Jordan|1223 Carling Ave.|3
Patrick Roy|1223 Greenbank Ave.|2
Paul Kariya|45 Midland.|2
Peter Forsberg|1 Kennedy Dr.|2
Rob Blake|12 19th Ave.|1
Roberto Alomar|55 Moodie Dr.|2
Roger Clemens|14 Hopewell Ave.|2
Roy Halladay|23 Ogilvie Rd.|1
Scott Gomez|1223 Montreal Ave.|2
Sidney Crosby|55 Sheppard Ave.|2
Steve Nash|1129 Otterson Dr.|1
Steve Sampras|448 St Clare Ave.|3
Ted Williams|45 Birchmount Ave.|1
Tevor Kidd|30 McCowan Ave.|1
Tie Domi|89 Spidina Rd.|2
Vince Carter|45 Hunt Club St.|3
Wade Redden|23 Steeles Ave.|2
Wayne Grekzy|45 Merviale.|1
*/