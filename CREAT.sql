create table if not exists genres (
	genre_id serial primary key,
	genre_name varchar(50) not null unique
);

create table if not exists performers (
	performer_id serial primary key,
	performer_name varchar(50) not null unique
);

create table if not exists genres_performers (
	genre_performer_id serial primary key,
	genre_id int references genres(genres_id),
	performer_id int references performers(performers_id)
);

create table if not exists albums (
	album_id serial primary key,
	album_name varchar(50) not null,
	album_year int not null
);

create table if not exists performers_albums (
	performer_albums_id serial primary key,
	performer_id int references performers(performers_id),
	album_id int references albums(albums_id)
);

create table if not exists tracks (
	track_id serial primary key,
	track_name varchar(50) not null,
	track_duration int not null,
	album_id int references albums(albums_id)
);

create table if not exists digest (
	digest_id serial primary key,
	digest_name varchar(50) not null,
	digest_year int not null
);

CREATE TABLE IF NOT EXISTS digests_tracks (
	digest_track_id serial PRIMARY KEY,
	digest_id int REFERENCES digest(digest_id),
	tracks_id int REFERENCES tracks(track_id)
);