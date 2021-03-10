WITH dts as 
(
    SELECT A.cast as Actors,  COUNT(A.cast) as number
	FROM netflix.netflix_titles_cast A
	inner join (SELECT * FROM  netflix.netflix_titles_cast where cast = 'Woody Harrelson') B
	on A.show_id = B.show_id
	GROUP BY A.cast
)
select * from dts where number > 1
