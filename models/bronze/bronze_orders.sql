{{
  config(
    materialized='incremental',
    unique_key=["id", "created_at"],
    incremental_strategy='merge',
    on_schema_change='append_new_columns'
  )
}}

select * from {{ source('dbo', 'orders')}}

