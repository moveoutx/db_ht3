--вывод альбомов за 2019 год
SELECT * FROM album
WHERE album_year BETWEEN '2019-01-01' AND '2019-12-31';

--вывод наименования и продолжительности самого длинного трека
SELECT track_name, duration FROM track
WHERE duration IN (SELECT MAX(duration) FROM track);

--вывод наименования треков продолжительность более 3,5 минут
SELECT track_name FROM track
WHERE duration >= '00:03:30';

--вывод наименования сборников за период с 2018 по 2020
SELECT collection_name FROM collection
WHERE collection_year BETWEEN '2018-01-01' AND '2020-12-31';

--вывод имен исполнителей из одного слова
SELECT artist_name FROM artist
WHERE artist_name not like '% %';

--вывод треков содержащих в наименовании Мой/My
SELECT track_name FROM track
WHERE track_name like '%Мой%' or track_name like '%My%';
