with Austin as (
    Select  sum(duration_minutes) as tot_minutes, subscriber_type ,EXTRACT(YEAR FROM start_time) as period,

    from `bigquery-public-data.austin_bikeshare.bikeshare_trips`

    GROUP BY subscriber_type, period


    order by period  
)


Select max(tot_minutes)as maax, subscriber_type, 
From Austin
group by subscriber_type,period