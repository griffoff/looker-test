- view: student_improvement
  sql_table_name: DW.STUDENT_IMPROVEMENT
  fields:

  - measure: cntr
    type: number
    sql: ${TABLE}.CNTR

  - dimension: final_type_of_student
    type: string
    sql: ${TABLE}.FINAL_TYPE_OF_STUDENT

  - dimension: frequency
    type: string
    sql: ${TABLE}.FREQUENCY
    
  - dimension: duration
    type: string
    sql: ${TABLE}.DURATION
    
  - dimension: login_count
    type: string
    sql: ${TABLE}.LOGIN_COUNT

  - dimension: initial_type_of_student
    type: string
    sql: ${TABLE}.INITIAL_TYPE_OF_STUDENT

  - dimension: intensity
    type: string
    sql: ${TABLE}.INTENSITY

  - dimension: recency
    type: string
    sql: ${TABLE}.RECENCY

  - measure: count
    type: count
    drill_fields: []

