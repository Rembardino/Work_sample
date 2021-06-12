with Austin as (
    Select count(trip_id) as total_rides, start_station_name,

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

    WHERE start_time >= '2021-02-21'

    GROUP BY start_station_name

    order by total_rides DESC 


),

New_York as (
    Select count(start_station_id) as total_rides,  start_station_name,

    FROM `bigquery-public-data.new_york_citibike.citibike_trips`

    WHERE starttime >= '2018-04-30T23:59:59.606000'

    GROUP BY start_station_name

    order by total_rides DESC 
),
London as (
    Select count(rental_id) as total_rides, start_station_name,

    FROM `bigquery-public-data.london_bicycles.cycle_hire`

    Where start_date >= '2017-05-13'

    GROUP BY start_station_name

    order by total_rides DESC 

)
Select * FROM Austin
UNION ALL
Select * from New_York
UNION ALL
Select * from London
order by total_rides DESC  
limit 20