with 

source as (

    select * from {{ source('raw_cb', 'citybike_trips') }}

),

renamed as (

    select

    from source

)

select * from renamed