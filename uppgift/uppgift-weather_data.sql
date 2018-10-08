CREATE DATABASE moop;

USE moop;

SOURCE weather_data.sql;

-- Visa antalet poster
SELECT COUNT(id) FROM weather_data;

-- Visa medeltemperaturen
SELECT AVG(temp) FROM weather_data;

-- Visa medeltemperaturen år 1962
SELECT AVG(temp) FROM weather_data WHERE weather_date LIKE '1962%';

-- Visa antalet mätpunkter år 1964
SELECT COUNT(id) FROM weather_data WHERE weather_date LIKE '1964%';

-- Visa antalet mätvärden över 0
SELECT COUNT(id) FROM weather_data WHERE temp > 0;

-- Visa antalet mätvärden under 0
SELECT COUNT(id) FROM weather_data WHERE temp < 0;

-- Visa antalet mätvärden som är 0
SELECT COUNT(id) FROM weather_data WHERE temp = 0;