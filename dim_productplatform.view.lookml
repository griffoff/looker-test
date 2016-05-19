- view: dim_productplatform
  sql_table_name: DW.DIM_PRODUCTPLATFORM
  fields:

  - dimension: dw_ldid
    type: string
    sql: ${TABLE}.DW_LDID

  - dimension_group: dw_ldts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS

  - dimension: is_platform
    type: string
    sql: ${TABLE}.IS_PLATFORM

  - dimension: productplatform
    type: string
    sql: ${TABLE}.PRODUCTPLATFORM

  - dimension: productplatformid
    type: string
    sql: ${TABLE}.PRODUCTPLATFORMID

  - measure: count
    type: count
    drill_fields: []

