with Austin as (
    Select count(start_time) / sum(duration_minutes*60) as index

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

    

),

New_York as (
    Select count(starttime) / sum(tripduration) as index

    from `bigquery-public-data.new_york_citibike.citibike_trips`

),
London as (
 Select count(start_date) / sum(duration) as index

    FROM `bigquery-public-data.london_bicycles.cycle_hire`

)

Select * from Austin