/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP 50 *
--FROM divvy

----Add trip length to data
--ALTER TABLE divvy
--ADD trip_length AS (DATEDIFF(MINUTE,started_at,ended_at))

----Removing quotations from values
--SELECT rideable_type, count(1) FROM divvy GROUP BY rideable_type
--UPDATE divvy SET rideable_type = REPLACE(rideable_type,'"','')
--UPDATE divvy SET member_casual = REPLACE(member_casual,'"','')
--UPDATE divvy SET ended_at = REPLACE(ended_at,'"','')

----Remove trips where trip end time is before start time
--SELECT member_casual, count(1) FROM divvy WHERE started_at>=ended_at GROUP BY member_casual
--DELETE from divvy WHERE ended_at<=started_at

----Make sure only unique ride id's
--SELECT COUNT(*)
--FROM first..divvy
--GROUP by ride_id
--HAVING count(*)>1

---- Looking at total trips in 2022
--SELECT COUNT(DISTINCT ride_id) AS 'Total Trips'
--FROM First..divvy

----Distribution of trips between members and casual riders 
--SELECT member_casual, COUNT(DISTINCT ride_id) AS 'Total Trips'
--FROM First..divvy
--GROUP BY member_casual

----Member vs Casual bike type distribution 
--SELECT  member_casual, rideable_type, COUNT (rideable_type) AS total
--FROM First..divvy
--GROUP BY member_casual, rideable_type
--order by 3

----Grouping trip by start and end locations
--SELECT start_station_id, end_station_id, COUNT(*) AS total
--FROM first..divvy
--GROUP BY start_station_name, end_station_name

----Average trip length by member and bike type
--SELECT member_casual,rideable_type, AVG(trip_length) AS 'Average Trip' FROM divvy GROUP BY member_casual, rideable_type

----Average trip length member vs casual
--SELECT member_casual, AVG(trip_length) AS 'Average Trip' FROM divvy GROUP BY member_casual
