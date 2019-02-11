-- smallimdb.sql

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS viewers;
DROP TABLE IF EXISTS movies;


CREATE TABLE movies (
  movieid int not null,
  title varchar(100) not null,
  director varchar(100) not null,
  year int not null,
  studio varchar(100) not null,
  primary key(movieid)
);
  

CREATE TABLE viewers (
  viewerid int not null,
  lastname varchar(100) not null,
  firstname varchar(100) not null,
  primary key(viewerid)
);


CREATE TABLE ratings (
  score int not null,
  description varchar(100) not null,
  primary key(score)
);


CREATE TABLE reviews (
  reviewid int not null,
  movieid int,
  viewerid int,
  score int,
  reviewdate date not null ,
  primary key(reviewid),
  foreign key(movieid) references movies(movieid),
  foreign key(viewerid) references viewers(viewerid) ,
  foreign key(score) references ratings(score)
);

