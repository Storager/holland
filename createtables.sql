USE test;
CREATE TABLE h_users (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nick varchar (30) UNIQUE NOT NULL,
name varchar (30) NOT NULL,
surname varchar (30) NOT NULL,
reg_date DATETIME NOT NULL,
byerstat INT NOT NULL,
sellerstat INT NOT NULL
);
INSERT INTO h_users(nick,name,surname,reg_date,byerstat,sellerstat) VALUES ('storager', 'Dmitry', 'Tsirulnikov', now(), 0,0);

CREATE TABLE lot (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name varchar (130) NOT NULL,
description TEXT,
startdate DATETIME NOT NULL,
enddate DATETIME NOT NULL,
startprice FLOAT NOT NULL,
endprice FLOAT NOT NULL,
user_id INT (6) UNSIGNED,
FOREIGN KEY (user_id) 
        REFERENCES h_users(id)
        ON DELETE CASCADE
);
INSERT INTO lot (name,startdate,enddate,startprice,endprice,user_id) VALUES ('router',now(), TIMESTAMPADD(day,60,now()), 2400, 10, 1), ('filter',now(), TIMESTAMPADD(day,60,now()), 200, 10, 1);