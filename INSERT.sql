insert into genres (genres_name) 
values ('Rock'), ('Pop'), ('Hip-Hop'), ('R&B');

UPDATE public.genres SET genres_name='Hip-Hop' WHERE genres_id=3;
UPDATE public.genres SET genres_name='R&B' WHERE genres_id=4;

insert into performers (performers_name) 
values ('Kino'), ('Justin Timberlake'), ('Eminem'), ('The Weeknd'), ('Whitney Houston');

insert into genres_performers (genres_id, performers_id)
values (1, 1), (2, 2), (3, 3), (4, 4), (4, 5);

insert into albums (albums_name, albums_year)
values ('Justified', 2002), ('Encore', 2004), ('Gruppa krovi', 1988), ('The Greatest Hits', 2000), ('After Hours', 2020);

insert into tracks (track_name, track_duration, album_id)
values ('Blinding Lights', 202, 5), ('Spokoinaya noch', 363, 3), ('Mockingbird', 250, 2), ('Cry me a river', 286, 1), ('Could I have this kiss forever', 230, 4), ('Война', 250, 3);
UPDATE public.tracks SET track_name='Blinding Lights my', track_duration=202, album_id=5 WHERE track_id=1;

insert into performer_albums (performers_id, albums_id) 
values (1, 3), (2, 1), (3, 2), (4, 5), (5, 4);

insert into digest (digest_name, digest_year)
values ('Последний герой', 1986), ('Platinum Collection', 2009), ('XO The collection', 2020), ('The Ultimate Collection', 2007);

insert into digests_tracks (digest_id, tracks_id)
values (1, 2), (2, 4), (3, 1), (4, 5);
