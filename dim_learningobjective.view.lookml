- view: dim_learningobjective
  sql_table_name: DW.DIM_LEARNINGOBJECTIVE
  fields:

  - dimension: learningobjective
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVE

  - dimension: learningobjectiveid
    type: string
    hidden: true
    primary_key: true
    sql: ${TABLE}.LEARNINGOBJECTIVEID

  - dimension: learningoutcome
    type: string
    sql: ${TABLE}.LEARNINGOUTCOME

  - dimension: lobjectiveid
    type: string
    hidden: true
    sql: ${TABLE}.LOBJECTIVEID

  - dimension: loutcomeid
    type: string
    hidden: true
    sql: ${TABLE}.LOUTCOMEID

  - measure: learningobjectivecount
    type: count
    drill_fields: []

