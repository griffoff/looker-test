- view: dim_learningobjective
  label: 'Learning Objective'
  sql_table_name: DW.DIM_LEARNINGOBJECTIVE
  fields:

  - dimension: learningobjective
    label: 'Objective'
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVE

  - dimension: learningobjectiveid
    type: string
    hidden: true
    primary_key: true
    sql: ${TABLE}.LEARNINGOBJECTIVEID

  - dimension: learningoutcome
    label: 'Outcome'
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
    label: 'No. of Learning Objectives'
    type: count
    drill_fields: []

