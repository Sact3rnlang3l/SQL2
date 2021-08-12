create view rock AS
select * 
from track
where genre_id in(
    select genre_id
    from genre
    where name = 'Rock'
)

create view classical_count AS
select count(*)
from track t
join playlist_track c 
on t.track_id = c.track_id
join playlist p 
on c.playlist_id = p.playlist_id
where p.name = 'Classical';
