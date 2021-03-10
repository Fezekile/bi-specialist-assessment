
-- Table: netflix_titles
CREATE TABLE netflix_titles (
    duration_minutes int  ,
    duration_seasons int  ,
    type varchar(50)  ,
    title varchar(150)  ,
    date_added date  ,
    release_year bigint  ,
    rating varchar(50)  ,
    description nvarchar(max) ,
    show_id number  NOT NULL,
    CONSTRAINT netflix_titles_pk PRIMARY KEY  (show_id)
);

-- Table: netflix_titles_cast
CREATE TABLE netflix_titles_cast (
    cast varchar(150)  ,
    show_id bigint  NOT NULL,
    CONSTRAINT netflix_titles_cast_pk PRIMARY KEY  (show_id)
);

-- Table: netflix_titles_category
CREATE TABLE netflix_titles_category (
    listed_in varchar(250) ,
    show_id bigint  NOT NULL,
    CONSTRAINT netflix_titles_category_pk PRIMARY KEY  (show_id)
);

-- Table: netflix_titles_countries
CREATE TABLE netflix_titles_countries (
    country varchar(100),
    show_id int  NOT NULL,
    CONSTRAINT netflix_titles_countries_pk PRIMARY KEY  (show_id)
);

-- Table: netflix_titles_directors
CREATE TABLE netflix_titles_directors (
    director varchar(150) ,
    show_id bigint  NOT NULL,
    CONSTRAINT netflix_titles_directors_pk PRIMARY KEY  (show_id)
);
