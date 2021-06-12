with Austin as (
    Select  sum(duration_minutes) as tot_minutes, subscriber_type ,EXTRACT(YEAR FROM start_time) as period,

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

    GROUP BY subscriber_type, period


    order by period  
),

New_York as (
    Select  sum(tripduration) as tot_time, usertype ,EXTRACT(YEAR FROM starttime) as period,

    from `bigquery-public-data.new_york_citibike.citibike_trips`

    GROUP BY usertype, period


    order by period  
)


Select max(tot_minutes) as maax, period , max(subscriber_type) as subscription
From Austin
group by period;

Select max(tot_time) as maax, period , max(usertype) as subscription
From New_York
group by period