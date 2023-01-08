CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY key,
	name varchar(60) NOT null,
	year integer);

CREATE TABLE IF NOT EXISTS collections_tracks (
	collection_id integer REFERENCES collections(id),
	track_id integer REFERENCES tracks(id),
	CONSTRAINT pk_collections_tracks PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name varchar(100) NOT NULL,
	length integer,
	album_id integer REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL,
	year integer  
);

CREATE TABLE IF NOT EXISTS albums_musicians (
album_id integer REFERENCES albums(id),	
musician_id integer REFERENCES musicians(id),
CONSTRAINT pk_albums_musicians PRIMARY KEY (musician_id, album_id));

CREATE TABLE IF NOT EXISTS musicians (
	id SERIAL PRIMARY KEY, 
	name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_musicians (
    genre_id integer REFERENCES genres(id),	
    musicians_id integer REFERENCES musicians(id),
	CONSTRAINT pk_genres_musicians PRIMARY KEY (genre_id, musicians_id)
);


CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	name varchar(30) NOT NULL
);

