with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text comiting for first change in git
        name as customer_name

    from source

)

select * from renamed
