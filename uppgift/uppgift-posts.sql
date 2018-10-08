CREATE DATABASE meep;

USE meep;

SOURCE posts.sql;
--SOURCE weather_data.sql;

-- Visa antalet inlägg
SELECT COUNT(text) FROM posts;

-- Visa det senaste datumet ett inlägg lades upp
SELECT MAX(created_at) FROM posts;

-- Visa det första datumet då ett inlägg lades upp
SELECT MIN(created_at) FROM posts;

-- Visa antalet "authors"
SELECT DISTINCT author FROM posts;

-- 