with
    fonte_clientes as (
        select *
        from {{ source('erp_northwind', 'customer') }}
    )

    , renomeacao as (
        select 
            cast(ID as varchar) as pk_cliente
            ,cast(COMPANYNAME as varchar) as compania_cliente
            ,cast(CONTACTNAME as varchar) as nome_cliente
            ,cast(CONTACTTITLE as varchar) as contato_cliente
            ,cast(ADDRESS as varchar) as endereco_cliente
            ,cast(CITY as varchar) as cidade_cliente
            ,cast(REGION as varchar) as regiao_cliente
            ,cast(POSTALCODE as varchar) as postal_cliente
            ,cast(COUNTRY as varchar) as pais_cliente
            ,cast(PHONE as varchar) as telefone_cliente
            --,cast(FAX as varchar)
        from fonte_clientes
    )

select *
from renomeacao