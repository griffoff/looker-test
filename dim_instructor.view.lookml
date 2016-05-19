- view: dim_instructor
  sql_table_name: DW.DIM_INSTRUCTOR
  fields:

  - dimension: instructor
    type: string
    sql: ${TABLE}.INSTRUCTOR

  - dimension: instructor_guid
    type: string
    sql: ${TABLE}.INSTRUCTOR_GUID

  - dimension: instructorid
    type: string
    sql: ${TABLE}.INSTRUCTORID

  - measure: count
    type: count
    drill_fields: []

