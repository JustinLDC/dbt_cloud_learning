with payments as (
    select * from {{ ref('stage_payments') }}
),

aggregated as (
    select
    sum(amount) as total_revenue
    from payments
    where status = 'success'
)

select * from aggregated