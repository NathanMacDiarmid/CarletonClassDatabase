/*
Problem 1.10
Produce a table that lists the name of all the service-subscribers that subscribe to at least all the same services as Jason Allison 
subscribes to but possibly others as well. Jason Allison rents the line with portID=2. (So this is the classic "subset" query.)
*/

DROP TABLE IF EXISTS JAllisonTable;
CREATE TABLE JAllisonTable (
    subName text
);

insert into JAllisonTable select subscribers.name
from subscribers
inner join service_subscribers on service_subscribers.portid = subscribers.portid;

select * from JAllisonTable;

/*
Test Output:
Mats Sundin
Mats Sundin
Jason Allison
Jason Allison
Eric Lindros
Eric Lindros
Bryan MacCabe
Bryan MacCabe
Steve Nash
Michael Jordan
Michael Jordan
Michael Jordan
Roger Clemens
Roger Clemens
Jack Morris
Roberto Alomar
Roberto Alomar
Joe Carter
Joe Carter
Joe Carter
Wayne Grekzy
George Bell
George Bell
Eric Staal
Eric Staal
Roy Halladay
Mario Lemieux
Mario Lemieux
Patrick Roy
Patrick Roy
Martin Brodeur
Homer Simpson
Homer Simpson
Homer Simpson
Bart Simpson
Bart Simpson
Joe Johnson
Vince Carter
Vince Carter
Vince Carter
Ed Belfour
Bobby Orr
Bobby Hull
Gordie Howe
Gordie Howe
Mark Messier
Mark Messier
Wade Redden
Wade Redden
Sidney Crosby
Sidney Crosby
Peter Forsberg
Peter Forsberg
Paul Kariya
Paul Kariya
Rob Blake
Chris Pronger
Chris Pronger
Chris Pronger
Gary Roberts
Gary Roberts
Alex Mogily
Scott Gomez
Scott Gomez
Frank Thomas
Frank Thomas
Frank Thomas
Barry Bonds
Hank Aaron
Hank Aaron
Babe Ruth
Babe Ruth
Ted Williams
Chris Bosh
Chris Bosh
Steve Sampras
Steve Sampras
Steve Sampras
Kobe Bryan
Kevin Garnett
Kevin Garnett
Larry Brown
Larry Brown
Brooke Shields
Matt Stajan
Matt Stajan
Matt Stajan
Tie Domi
Tie Domi
Tevor Kidd
*/