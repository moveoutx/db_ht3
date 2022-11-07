CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	Artist_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
	GenreID INTEGER REFERENCES Genre(id),
	ArtistID INTEGER REFERENCES Artist(id),
	CONSTRAINT pk PRIMARY KEY (GenreID, ArtistID)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	Collection_year date default null,
	Collection_name VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	Album_name VARCHAR(60) NOT NULL,
	Album_year DATE check(Album_year > '1900-01-01')
);

CREATE TABLE IF NOT EXISTS Artist_Album (
	Album_ID INTEGER REFERENCES Album(id),
	Artist_ID INTEGER REFERENCES Artist(id),
	CONSTRAINT pk1 PRIMARY KEY (Album_ID, Artist_ID)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	Track_name VARCHAR(60) UNIQUE NOT NULL,
	Duration VARCHAR(60) NOT NULL,
	AlbumID INTEGER references Album(id)
);

CREATE TABLE IF NOT EXISTS Collection_Track (
	Collection_ID INTEGER REFERENCES Collection(id),
	Track_ID INTEGER REFERENCES Track(id),
	CONSTRAINT pk2 PRIMARY KEY (Collection_ID, Track_ID)
);
