insert into musicians (name)
values ('The Beatles'),
       ('Eagles'), 
       ('Frank Sinatra'), 
       ('Bee Gees'), 
       ('Eminem'), 
       ('Lady Gaga'), 
       ('Queen'), 
       ('The Rolling Stones'), 
       ('ABBA');

insert into genres (name)
values ('поп'), 
       ('Хип-хоп'), 
       ('Rock'), 
       ('диско'), 
       ('электронная музыка');

insert into albums (name, year)
values ('Let It Be', 1970), 
('Hotel California', 1976), 
('Sinatra: New York', 2009), 
('One', 1989), 
('Kamikaze', 2018), 
('Joanne', 2016), 
('Made in Heaven', 1995), 
('Tattoo You', 1981),
('Joight', 2020),
('Voyage', 2021);

insert into tracks (name, length, album_id)
values ('Two Of Us', 03.37, 1), 
('Dig A Pony', 03.55, 1), 
('Heaven For Everyone', 05.36, 7), 
('Too Much Love Will Kill You', 04.20, 7),
('My Life Has Been Saved', 03.16, 7), 
('The Ringer', 05.38, 5), 
('Lucky You', 04.05, 5), 
('Normal', 03.42, 5), 
('This Love of Mine', 04.40, 3),
('I Have Dreamed', 03.16, 3), 
('Too Marvelous for Words', 02.34, 3), 
('Diamond Heart', 03.30, 6), 
('John Wayne', 02.54, 6), 
('I Still Have Faith in You', 05.09, 9),
('Bumblebee', 03.57, 9),
('Hotel California', 06.30, 2), 
('Tears', 05.19, 4), 
('Wish You Were Here', 04.47, 4), 
('Start Me Up', 03.33, 8),
('for you', 03.30, 18);

insert into collections (name, year)
values ('one', 1970), 
('two', 1976), 
('free', 1989), 
('for', 1981), 
('five', 1995), 
('six', 2009), 
('seven', 2016), 
('aight', 2018), 
('night', 2021);

insert into albums_musicians (album_id, musician_id)
values (1, 1),
       (1,3), 
       (2,6), 
       (9, 2), 
       (8, 2), 
       (18, 4), 
       (19, 5), 
       (3, 9), 
       (4, 8);

insert into genres_musicians (genre_id, musicians_id)
values (1, 1),
       (2,2), 
       (3,2), 
       (4, 3), 
       (5, 4), 
       (2, 5), 
       (4, 6), 
       (1, 7), 
       (1, 2);

insert into collections_tracks  (collection_id, track_id)
values (1, 1),
       (2,2), 
       (3,2), 
       (4, 3), 
       (5, 4), 
       (6, 5), 
       (7, 6), 
       (8, 7), 
       (9, 2),
       (1, 10),
       (2,11), 
       (3,12), 
       (4, 13), 
       (5, 14), 
       (6, 15), 
       (7, 16), 
       (8, 17), 
       (9, 18);
      
 