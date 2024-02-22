use somaiya;
CREATE TABLE Store (
    StoreId VARCHAR(5),
    Name VARCHAR(50),
    Location VARCHAR(50),
    City VARCHAR(50),
    NoOfEmp INT,
    DateOpen DATE,
    SalesAmt INT
);
INSERT INTO Store (StoreId, Name, Location, City, NoOfEmp, DateOpen, SalesAmt)
VALUES 
('S101', 'Planet Fashion', 'Bandra', 'Mumbai', 7, '2015-10-16', 40000),
('S102', 'Vogue', 'Karol Bagh', 'Delhi', 8, '2015-07-14', 120000),
('S103', 'Trends', 'Powai', 'Mumbai', 10, '2015-06-24', 30000),
('S104', 'Super Fashion', 'Thane', 'Mumbai', 11, '2015-02-06', 45000),
('S105', 'Annabelle', 'South Extn. Delhi', 'Delhi', 8, '2015-04-09', 60000),
('S106', 'Rage', 'Defence Colony', 'Delhi', 5, '2015-03-01', 20000);
select * from store;
-- (i) To display names of stores along with Sales Amount of those stores that are located in Mumbai.
select concat(name," - ",salesamt) as result from store where city = 'mumbai';
-- (ii) To display the details of store in alphabetical order of name.
select * from store order by name asc;
-- (iii) To display the City and the number of stores located in that City, only if number of stores is more than 2.
select city, count(storeid) as stores from store group by city having count(storeid)>2;
-- (iv) - To display your name in capital letters:
select upper("onkar sawant");
-- (v) - To display the specified number of characters from a particular position of the given string:
select substr("onkar sawant",2,5);








