select track_name, track_duration from tracks
where track_duration = (select max (track_duration) from tracks);

select track_name, track_duration from tracks 
where track_duration >= 210;

select digest_name, digest_year from digest
where digest_year between 2018 and 2022;

select performers_name from performers 
where performers_name not like '% %';

select track_name from tracks 
where lower(track_name) like 'мой %' or lower(track_name) like '% мой' or lower(track_name) like '% мой %' 
or lower(track_name) like 'мой' or lower(track_name) like 'my %' or lower(track_name) like '% my' 
or lower(track_name) like '% my %'  or lower(track_name) like 'my';

select genres_name, count (performers_name) from performers p
join genres_performers gp on p.performers_id = gp.performers_id 
join genres g on gp.genres_id = g.genres_id group by g.genres_id;

select count (track_name) from tracks t
join albums a on a.albums_id = t.album_id
where a.albums_year between 2019 and 2020;

select albums_name, AVG (track_duration) from tracks t
join albums a on a.albums_id = t.album_id
group by a.albums_name;

select performers_name from performers p
where performers_name not in (
select performers_name from albums a
join performer_albums pa on a.albums_id = pa.performers_id
join performers p on pa.performers_id = p.performers_id
where a.albums_year = 2020);

select digest_name from digest d
join digests_tracks dt on d.digest_id = dt.digest_id 
join tracks t on dt.tracks_id = t.track_id
join albums a on t.album_id = a.albums_id 
join performer_albums pa on a.albums_id = pa.albums_id 
join performers p on pa.performers_id = p.performers_id 
where p.performers_name like 'The Weeknd';