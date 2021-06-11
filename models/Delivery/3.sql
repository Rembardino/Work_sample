with man as (
    Select birth_year as period, count(gender) as male, 

    From `bigquery-public-data.new_york_citibike.citibike_trips`

     WHERE starttime >= '2018-04-30' AND gender='male'

     group by period

    
),

woman as (
    Select birth_year , count(gender) as female

    From `bigquery-public-data.new_york_citibike.citibike_trips`

     WHERE starttime >= '2018-04-30' AND gender='female'

     group by birth_year
     
     
)
Select female,male,birth_year  from woman
join  man
on woman.birth_year=man.period
