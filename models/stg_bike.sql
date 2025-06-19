with
    bike as (
        select
            ride_id,
            started_at,
            ended_at,
            start_station_id,
            start_station_name,
            end_station_id,
            start_lat,
            start_lng,
            end_lat,
            end_lng,
            member_casual
        from {{ source("demo", "bike") }}
    )

select *
from bike