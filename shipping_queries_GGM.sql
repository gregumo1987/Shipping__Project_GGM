/* ten queries that I run for shipping database*/

/* aggregate query with grouping*/ 

/* What ship is the oldest?*/
SELECT Name 
FROM ships
ORDER BY Year 
LIMIT 1;

/* what captain has MOST amount crew members?*/
SELECT CaptainName
FROM ships 
ORDER BY NumberOfCrewMembers DESC
LIMIT 1;


/*Which Country has the most number of Ports?*/

SELECT Country,count(PortName) AS NumberOfPorts
FROM ports
GROUP BY Country;

/*Which ship and captain currently have a container over 4000 lbs on their ship?*/

SELECT Name,CaptainName
FROM ships
WHERE ShipID IN (
	SELECT ShipID
    FROM containers
    WHERE weight > 4000);

/*Calculating volume of containers that are not null  */

SELECT ContainerID,ShipID , height* width*length  AS volume
FROM containers
WHERE ShipID IS NOT NULL
ORDER BY volume DESC;

/*5 joins statements */
/*selecting port id, captain name , name of ship, and country of port where country of port is equal to China*/
SELECT s.HomePortID, CaptainName, Name, Country
FROM ships s
 JOIN ports p ON s.HomePortID=p.PortID
WHERE Country ="China";

/*selecting captain name , ShipID , and country of port where number of crew members is greater than 75*/

SELECT  CaptainName, c.ShipID,Country
FROM ships s
 JOIN ports p ON s.HomePortID=p.PortID
 JOIN containers c ON s.ShipID=c.ShipID 
WHERE NumberOfCrewMembers > 75;

/*selecting captain name ,NAME , and CONTAINERID where shipID is null  aka Container not on boat*/


SELECT Name, CaptainName, ContainerID
FROM ships s
RIGHT JOIN containers c ON s.ShipID=c.ShipID 
WHERE c.ShipID IS NULL;

/*selecting the Country and total weight of ships with over 100 members and grouping these by country*/

SELECT  Country, sum(weight) AS TotalWeight
FROM ships s
 JOIN ports p ON s.HomePortID=p.PortID
 JOIN containers c ON s.ShipID=c.ShipID 
WHERE NumberOfCrewMembers > 100 
GROUP BY  Country;

/*selecting the average weight of container and name of ship that has displacement greater than 4.5*/

SELECT Name, avg(weight) AS AvgWeight
FROM ships s
 JOIN containers c ON s.ShipID=c.ShipID 
WHERE s.Displacement < 3.5;



