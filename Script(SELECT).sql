--количество исполнителей в каждом жанре;
select g.name, count(m.name)
from genres as g
left join genres_musicians as gm on g.id = gm.genre_id
left join musicians as m on gm.musicians_id = m.id
group by g.name
order by count(m.id) desc;
--количество треков, вошедших в альбомы 2019-2020 годов;
select t.name, a.year
from albums as a
left join tracks as t on t.album_id = a.id
where (a.year >= 2019) and (a.year <= 2020);
--средняя продолжительность треков по каждому альбому;
select a.name, AVG(t.length)
from albums as a
left join tracks as t on t.album_id = a.id
group by a.name
order by AVG(t.length);
--все исполнители, которые не выпустили альбомы в 2020 году;
select distinct m.name
from musicians as m
where m.name not in (
    select distinct m.name
    from musicians as m
    left join albums_musicians as am on m.id = am.musician_id
    left join albums as a on a.id = am.album_id
    where a.year = 2020
    order by m.name);
--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name
from collections as c
left join collections_tracks as ct on c.id = ct.collection_id
left join tracks as t on t.id = ct.track_id
left join albums as a on a.id = t.album_id
left join albums_musicians as am on am.album_id = a.id
left join musicians as m on m.id = am.musician_id
where m.name like '%i%'
order by c.name;
--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.name
from albums as a
left join albums_musicians as am on a.id = am.album_id
left join musicians as m on m.id = am.musician_id
left join genres_musicians as gm on m.id = gm.musicians_id
left join genres as g on g.id = gm.genre_id
group by a.name
having count(distinct g.name) > 1
order by a.name;
--наименование треков, которые не входят в сборники;
select t.name
from tracks as t
left join collections_tracks as ct on t.id = ct.track_id
where ct.track_id is null;
--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select m.name, t.length
from tracks as t
left join albums as a on a.id = t.album_id
left join albums_musicians as am on am.album_id = a.id
left join musicians as m on m.id = am.musician_id
group by m.name, t.length
having t.length = (select min(length) from tracks)
order by m.name;
--название альбомов, содержащих наименьшее количество треков.
select distinct a.name
from albums as a
left join tracks as t on t.album_id = a.id
where t.album_id in (
    select album_id
    from tracks
    group by album_id
    having count(id) = (
        select count(id)
        from tracks
        group by album_id
        order by count
        limit 1
    )
order by a.name);