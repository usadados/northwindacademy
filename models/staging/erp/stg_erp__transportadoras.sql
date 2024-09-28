with
    fonte_transportadoras as (
        select 
            cast(ID as int) as pk_transportadora
            , cast(COMPANYNAME as varchar) as compania_transportadora 
            , cast(PHONE as varchar) telefone_transportadora
        from {{ source('erp_northwind', 'shipper') }}
    )

select *
from fonte_transportadoras