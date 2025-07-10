with raw_hosts as (select * from {{ ref("src_hosts") }})
select
    host_id,
    nvl(host_name, 'Anonymous') as host_name,
    NVL(is_superhost, 'Anonymous') as is_superhost_1,
    created_at,
    updated_at
from raw_hosts
where is_superhost_1 = 'Anonymous'
