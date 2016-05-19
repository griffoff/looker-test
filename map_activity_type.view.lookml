- view: map_activity_type
  sql_table_name: DW.MAP_ACTIVITY_TYPE
  fields:

  - dimension: activity_type
    type: string
    sql: ${TABLE}.ACTIVITY_TYPE

  - dimension: lcs_activity_type
    type: string
    sql: ${TABLE}.LCS_ACTIVITY_TYPE

  - measure: count
    type: count
    drill_fields: []

