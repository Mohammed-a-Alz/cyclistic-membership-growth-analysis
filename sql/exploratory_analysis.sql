-- Cyclistic: Exploratory Analysis (BigQuery)

-- 1) Total rides by rider type
SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM
  `passionfruit-488013.cyclistic.trips`
GROUP BY
  member_casual
ORDER BY
  total_rides DESC;

-- 2) Avg ride length by rider type
SELECT
  member_casual,
  ROUND(AVG(ride_length), 2) AS avg_ride_length
FROM
  `passionfruit-488013.cyclistic.trips`
GROUP BY
  member_casual
ORDER BY
  avg_ride_length DESC;

-- 3) Rides + avg ride length by day of week
SELECT
  member_casual,
  day_of_week_name,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length
FROM
  `passionfruit-488013.cyclistic.trips`
GROUP BY
  member_casual,
  day_of_week_name,
  day_of_week
ORDER BY
  day_of_week,
  member_casual;

-- 4) Rides + avg ride length by month
SELECT
  member_casual,
  month_name,
  COUNT(*) AS total_rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length
FROM
  `passionfruit-488013.cyclistic.trips`
GROUP BY
  member_casual,
  month_name,
  month
ORDER BY
  month,
  member_casual;
