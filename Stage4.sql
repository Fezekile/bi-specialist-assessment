#List the people who have appeared in a movie with Woody Harrelson more than once.
#list--------------------------------
		#Alden Ehrenreich
		#Bill Murray
		#Donald Glover
		#Emilia Clarke
		#Joonas Suotamo
		#Paul Bettany
		#Phoebe Waller-Bridge
		#Thandie Newton
		#William Sadler
#Query
WITH dts as 
(
    SELECT A.cast as Actors,  COUNT(A.cast) as number
	FROM netflix.netflix_titles_cast A
	inner join (SELECT * FROM  netflix.netflix_titles_cast where cast = 'Woody Harrelson') B
	on A.show_id = B.show_id
	GROUP BY A.cast
)
select * from dts where number > 1

#What is the most common first name among actors and actresses?
#Answer is null. Most of the the actors names not provided.
#The  most common first name among actors and actresses is Michael
#Query---------------------------------
with dts as (SELECT TRIM(SUBSTRING(cast, 1, CHAR_LENGTH(cast) - CHAR_LENGTH(SUBSTRING_INDEX(REVERSE(cast), ' ', 1)))) AS firstNames , count(TRIM(SUBSTRING(cast, 1, CHAR_LENGTH(cast) - CHAR_LENGTH(SUBSTRING_INDEX(REVERSE(cast), ' ', 1))))) as Occurrance
FROM netflix.netflix_titles_cast
group by TRIM(SUBSTRING(cast, 1, CHAR_LENGTH(cast) - CHAR_LENGTH(SUBSTRING_INDEX(REVERSE(cast), ' ', 1)))))
select * from dts order by Occurrance desc
								
#Which Movie had the longest timespan from release to appearing on Netflix
#Answer : 'Pioneers: First Women Filmmakers*
#Query----------------------------------------------------------
										 
with dts as (SELECT title,  (year(curdate())-release_year) as timespan, release_year
FROM netflix.netflix_titles where release_year <> 0)
select * from dts order by timespanInyears desc		



