-- question 3
select
	count(*)
from green_taxi_data_2019
where
	lpep_pickup_datetime::DATE = '2019-01-15'
	and lpep_dropoff_datetime::DATE = '2019-01-15';
-- question 4
select
	lpep_pickup_datetime::DATE as day_trip
	, sum(trip_distance) as total_distance
from green_taxi_data_2019
group by 
	1
order by total_distance desc;
-- question 5
select
	count(passenger_count)
	, passenger_count
from green_taxi_data_2019
where
	lpep_pickup_datetime::date = '2019-01-01'
group by passenger_count;
-- question 6
with trip_zones as (
select
	g.tip_amount as tip_amount
	, zp."Zone" as pickup_zone
	, zd."Zone" as dropoff_zone
from
	green_taxi_data_2019 as g
join zones as zp on g."PULocationID" = zp."LocationID"
join zones as zd on g."DOLocationID" = zd."LocationID"
)
select
	*
from trip_zones
where pickup_zone = 'Astoria'
order by tip_amount desc
;


	
	
