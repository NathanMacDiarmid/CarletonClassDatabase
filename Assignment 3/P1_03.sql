/*
Problem 1.3
List the names of all the subscribers who are originators of a call to someone who is also a subscriber on the same switch (i.e. a line to line call).
*/

select subscribers.name from subscribers
inner join channels on subscribers.portid = channels.portid
inner join calls on channels.portid = calls.orig;

/*
Test Output:
name       
-----------
Mats Sundin
Jason Allis
Bryan MacCa
Michael Jor
Jack Morris
Eric Staal 
Mario Lemie
Homer Simps
Homer Simps
Vince Carte
Ed Belfour 
*/