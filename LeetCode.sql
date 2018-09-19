-- 595. Big Countries
select name, population, area from World
where area > 3000000 or population > 25000000;
-- 620. Not Boring Movies
select * from cinema
where id%2 = 1 and description <> "boring"
order by rating desc;
-- 182. Duplicate Emails
select distinct p1.Email from Person p1
where (select count(p2.Id) from Person p2 where p2.Email = p1.Email having count(p2.Id) > 1);