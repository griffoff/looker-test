- view: dim_student
  sql_table_name: DW.DIM_STUDENT
  fields:

  - dimension: student
    type: string
    sql: ${TABLE}.STUDENT

  - dimension: student_guid
    type: string
    sql: ${TABLE}.STUDENT_GUID
    
  - measure: student_count
    label: 'No. of Students'
    type: count_distinct
    sql: ${TABLE}.STUDENT_GUID

  - dimension: studentid
    type: string
    sql: ${TABLE}.STUDENTID
    primary_key: true
    
  - measure: overall_score
    type: number
    sql: AVG(fact_activityaggregate.normalScore) over (partition by guid)

  - measure: count
    type: count
    drill_fields: []

