create database superman_2;
use superman_2;
CREATE TABLE Flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(50) NOT NULL,
    source_1 VARCHAR(30),
    destination VARCHAR(30),
    fare INT CHECK (fare <= 20000)
);
INSERT INTO Flights (flight_id,airline, source_1, destination) VALUES (1,'SpiceJet', 'Kolkata', 'Delhi');
insert into Flights values(2,'IndiGo', 'Delhi', 'Mumbai', 12000);
insert into Flights values(3,'AirIndia', 'Bangalore', 'Chennai', 4500);
SELECT * FROM Flights WHERE fare > 10000;
SELECT * FROM Flights WHERE source_1 = 'Delhi' OR fare < 5000;
SELECT DISTINCT airline FROM Flights;
SELECT * FROM Flights WHERE fare IS NOT NULL ORDER BY fare DESC LIMIT 2;
SELECT * FROM Flights WHERE fare BETWEEN 8000 AND 15000 ORDER BY fare ASC;
SELECT source_1, COUNT(*) AS flights_count FROM Flights GROUP BY source_1;
SELECT * FROM Flights WHERE fare = (SELECT MAX(fare) FROM Flights);
DROP TABLE IF EXISTS Flights;