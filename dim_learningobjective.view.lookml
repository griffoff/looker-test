- view: dim_learningobjective
  sql_table_name: DW.DIM_LEARNINGOBJECTIVE
  fields:

  - dimension: learningobjective
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVE

  - dimension: learningobjectiveid
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVEID

  - dimension: learningoutcome
    type: string
    sql: ${TABLE}.LEARNINGOUTCOME

  - dimension: lobjectiveid
    type: string
    sql: ${TABLE}.LOBJECTIVEID

  - dimension: loutcomeid
    type: string
    sql: ${TABLE}.LOUTCOMEID

  - measure: count
    type: count
    drill_fields: []

