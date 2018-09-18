USE c9;

DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  ranking int(11) NOT NULL,
  clan varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

LOCK TABLES teachers WRITE;

INSERT INTO teachers VALUES 
    (null,'Henry Larsson','thegreath',4,'MaFy'),
    (null,'Anna Ostgård','doomgirl',1,'KeBi'),
    (null,'Jonna Gustavsson','godwoken',5,'KeBi'),
    (null,'Elisabet Eriksson','izzy',3,'H'),
    (null,'Frans Stål','lussifer',6,'Da'),
    (null,'Tommy Svensson','quillboar',2,'H');


UNLOCK TABLES;

