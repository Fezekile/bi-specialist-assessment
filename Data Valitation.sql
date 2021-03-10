#validating netflix_titles
#checking  the show_id if is null and the 
SELECT show_id FROM netflix.netflix_titles where show_id = 0 ;
#checking if the data in release_year is correct 
SELECT release_year FROM netflix.netflix_titles where length(release_year) <> 4 or release_year <= 1900 or release_year >=2022 ;
#Errors has been found in fur row where the data has been captured incorrectly 
#-------------------------------------------------------------------------------
#validating netflix_titles_category

SELECT * FROM netflix.netflix_titles_category where show_id is null or listed_in is null;

#---------------------------------------------------------------------------
#validating Counntries
SELECT * FROM netflix.netflix_titles_countries where show_id is null or country is null;
#--------------------------------
#validating directors
# check any nulls in show_id fiels and director
SELECT * FROM netflix.netflix_titles_directors where show_id is null or director is null;
#validating netflix_titles_cast

SELECT * FROM netflix.netflix_titles_cast where show_id is null or cast is null;


