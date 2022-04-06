select  Название, Год_выпуска from "Альбом" 
where "Год_выпуска" = 2018

select Название, Длительность from "Трек"
order by Длительность desc limit 1;

select Название, Длительность from "Трек"
where Длительность > 210;

select Название from Сборник
where 2018 <= Год_выпуска and "Год_выпуска"  <= 2020;

select Псевдоним from Исполнители
where Псевдоним not ilike '%% %%';

select Название from Трек
where Название ilike '%%мой%%' or Название ilike '%%my%%'