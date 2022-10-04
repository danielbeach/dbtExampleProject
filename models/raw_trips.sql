SELECT
        trips.ride_id,
        trips.rideable_type,
        trips.started_at,
        trips.ended_at,
        EXTRACT(EPOCH FROM (trips.started_at - trips.ended_at)) as trip_duration,
        CASE WHEN trips.start_station_name IS NULL
             THEN 'Unknown' ELSE trips.start_station_name
             END as start_station_name,
        trips.start_station_id,
        CASE WHEN trips.end_station_name IS NULL
             THEN 'Unknown' ELSE trips.end_station_name
             END as end_station_name,
        trips.end_station_id,
        trips.start_lat,
        trips.start_lng,
        trips.end_lat,
        trips.end_lng,
        CASE WHEN trips.member_casual = 'member' THEN 1 ELSE 0 END as member_casual
FROM trips
