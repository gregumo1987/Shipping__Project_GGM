/* script for generating data in tables */ 
USE shipping;

/* insert 5 rows into ports*/

INSERT INTO ports
VALUES('463273849',"Shanghai","Shanghai","China");

INSERT INTO ports
VALUES('463001231',"Shenzhen","Shenzhen","China");


INSERT INTO ports
VALUES('463099172',"Guangzhou","Guangzhou","China");

INSERT INTO ports
VALUES('463098132',"Busan","Busan","South Korea");

INSERT INTO ports
VALUES('463098132',"Long Beach","Long Beach","United States");

/* insert 10 rows into ships*/

INSERT INTO ships
VALUES("Linda","3.35","Charles Stewart","52","463098132","1986","1212");


INSERT INTO ships
VALUES("Stacey","4.12","Tabitha Cook","71","463098132","1989","4561");

INSERT INTO ships
VALUES("Journey","4.10","John Appercorn","43","463099172","2001","1122");


INSERT INTO ships
VALUES("Discovery","2.98","Li Zahm","65","463001231","1979","1321");

INSERT INTO ships
VALUES("Turbulance","1.32","Tony Zorn","63","463098132","1978","1211");


INSERT INTO ships
VALUES("Columbus","2.98","Chloe Jones","101","463098132","1994","1544");


INSERT INTO ships
VALUES("Solace","3.45","Jim Montgomery","167","463273849","1994","1721");




INSERT INTO ships
VALUES("Equinox","4.41","Kim Chang","121","463001231","1999","1654");




INSERT INTO ships
VALUES("Lauren","5.67","James Madison","121","463273849","1984","1881");


INSERT INTO ships
VALUES("Venus","5.32","Bruce Bowen","101","463098132","1984","1928");

/* insert 20 rows into containers*/

INSERT INTO containers
VALUES("1922338","6.32","5.10","40.2","2001.12","1928");

INSERT INTO containers
VALUES("1922431","6.39","5.11","41.1","2321.15",null);


INSERT INTO containers
VALUES("1922482","6.33","5.01","40.88","4329.12",null);


INSERT INTO containers
VALUES("1922742","6.12","5.02","40.21","2043.09","1928");



INSERT INTO containers
VALUES("1923928","6.01","4.98","40.01","2849.12","1881");

INSERT INTO containers
VALUES("1927900","6.09","4.32","40.00","5600.98","1654");

INSERT INTO containers
VALUES("1921901","6.13","5.16","40.03","5829.98","1654");

INSERT INTO containers
VALUES("1987263","6.07","5.67","40.34","3452.71","1721");

INSERT INTO containers
VALUES("1987008","6.02","5.21","40.21","3843.91","1212");

INSERT INTO containers
VALUES("1987045","6.20","5.98","40.50","3943.21","1212");


INSERT INTO containers
VALUES("1987049","6.20","5.15","40.87","3448.26","4561");


INSERT INTO containers
VALUES("1984293","6.01","5.10","40.03","3409.28","1654");


INSERT INTO containers
VALUES("1984267","6.33","5.11","40.75","3909.91","1654");

INSERT INTO containers
VALUES("1984234","6.26","5.18","40.31","3909.61",null);


INSERT INTO containers
VALUES("1984236","6.12","5.03","40.22","4322.21","1321");


INSERT INTO containers
VALUES("1984299","6.19","4.99","40.27","6322.21","1321");


INSERT INTO containers
VALUES("1984881","6.01","4.97","40.04","6011.29",null);

INSERT INTO containers
VALUES("1984772","6.00","5.32","40.07","4562.11","1721");

INSERT INTO containers
VALUES("1984099","6.32","5.18","40.13","4881.44","1721");

INSERT INTO containers
VALUES("1984876","6.01","5.14","40.11","4889.40","1122");


INSERT INTO containers
VALUES("1984871","6.89","5.20","40.10","4110.91","1122");


