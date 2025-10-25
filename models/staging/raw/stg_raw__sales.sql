with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        cast(date_date as TIMESTAMP) as date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity

    from source

)

select * from renamed