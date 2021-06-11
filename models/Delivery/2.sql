with Austin as (
    Select  EXTRACT(YEAR FROM start_time) as period, MAX(COUNT(distinct subscriber_type))

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

    GROUP BY period

    order by period DESC 
),
New_York as (
    Select  EXTRACT(YEAR FROM starttime) as period, count(start_station_id) as total_rides,  start_station_name,

    FROM `bigquery-public-data.new_york_citibike.citibike_trips`

    WHERE starttime >= '2018-04-30T23:59:59.606000'

    GROUP BY start_station_name

    order by total_rides DESC 
)
Select * From Austin