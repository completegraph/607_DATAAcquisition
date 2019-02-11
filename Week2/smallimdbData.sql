-- smallimdb.sql
SET SQL_SAFE_UPDATES=0;  /* Note that truncation of tables is disallowed when foreign keys exist.*/

DELETE FROM ratings;

INSERT INTO ratings
	(score, description) 
VALUES 
	( 1, "Excellent") ,
	( 2, "Very Good") ,
	( 3, "Average" ) ,
	( 4, "Below Average" ) ,
	( 5, "Terrible" );


DELETE FROM viewers;

INSERT INTO viewers
	(viewerid, lastname, firstname )
VALUES
	( 1, "Wang", "Y" ) ,
	( 2, "Johnson" , "Fred" ) ,
	( 3, "Thakkar", "Ossie" ) ,
	( 4, "Astrom", "Sophie" ) ,
	( 5, "Anderson", "Birgit" ) ;
	
DELETE FROM movies;

INSERT INTO movies
	(movieid, title, director, year, studio )
VALUES
	( 1 , "Mary Poppins Returns" , "Rob Marshall", 2018 , "Walt Disney Studios" ),
    ( 2 , "Bohemian Rhapsody", "Bryan Singer, Dexter Fletcher", 2018, "20th Century Fox" ) ,
    ( 3 , "Black Panther", "Ryan Coogler",  2018, "Walt Disney Studios" ) ,
    ( 4 , "Fantastic Beasts: The Crimes of Grindelwald", "David Yates", 2018 , "Warner Bros. Pictures" ),
    ( 5,  "Mission: Impossible - Fallout", "Christopher McQuarrie", 2018, "Paramount Pictures" ) ,
    ( 6,  "The Seventh Seal", "Ingmar Bergman", 1957, "AB Svensk Filmindustri" );

DELETE FROM reviews;

INSERT INTO reviews
     (reviewid , movieid, viewerid, score, reviewdate )
VALUES
     (  1,   1,   1,  2,  "2019-2-07" ) ,
     (  2,   2,   2,  2,  "2019-2-05" ) ,
     (  3,   3,   3,  3,  "2019-1-05" ) ,
     (  4,   4,   4,  4,  "2019-01-11" ) ,
     (  5,   5,   5,  2,  "2019-02-07" ) ,
     (  6,   6,   5,  1,  "2019-02-01" ) ,
     (  7,   4,   1,  3,  "2019-02-01" ) ,
     (  8,   1,   2,  3,  "2019-02-04" ) ,
     (  9,   6,   5,  2,  "2019-02-04" ) ;
     
