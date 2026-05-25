with 

source as (

    select * from {{ source('raw_cb', 'weather_structured') }}

),

renamed as (

    select
        city_id,
        country,
        city_name,
        latitude,
        longitude,
        observation_time,
        temp,
        temp_min,
        temp_max,
        humidity,
        pressure,
        wind_speed,
        wind_direction,
        clouds,
        weather_main,
        weather_description,
        weather_icon

    from source

)

select * from renamed