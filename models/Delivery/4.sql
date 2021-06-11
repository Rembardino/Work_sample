with Austin as (
    Select count(start_time) / sum(duration_minutes*60)

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

),

New_York as (
    Select count(starttime) / sum(tripduration)

    from `bigquery-public-data.new_york_citibike.citibike_trips`

)
Select * from New_York