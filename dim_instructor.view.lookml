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
    hidden: true
    primary_key: true
    sql: ${TABLE}.INSTRUCTORID

  - measure: instructorcount
    type: count
    drill_fields: []

