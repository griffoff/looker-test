- view: student_course_metrics
  sql_table_name: DW.STUDENT_COURSE_METRICS
  fields:

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - dimension: duration
    type: number
    sql: ${TABLE}.DURATION

  - dimension: frequency
    type: string
    sql: ${TABLE}.FREQUENCY

  - dimension: gap_week
    type: string
    sql: ${TABLE}.GAP_WEEK

  - dimension: intensity
    type: string
    sql: ${TABLE}.INTENSITY

  - dimension: octant
    type: string
    sql: ${TABLE}.OCTANT

  - measure: pages_read
    type: average
    sql: ${TABLE}.PAGES_READ
    
  - dimension: pages_read_bucket
    type: number
    sql: round(${TABLE}.PAGES_READ, 1)

  - measure: recency
    type: average
    sql: ${TABLE}.RECENCY

  - dimension: score_bucket
    type: number
    sql: round(nullif(${TABLE}.SCORE, 'N/A')::float, 1)
    
  - measure: score
    type: average
    sql: nullif(${TABLE}.SCORE, 'N/A')::float

  - dimension: type_of_student
    type: string
    sql: ${TABLE}.TYPE_OF_STUDENT

  - dimension: user_guid
    type: string
    sql: ${TABLE}.USER_GUID

  - dimension: weeksname
    type: string
    sql: ${TABLE}.WEEKSNAME
    order_by_field: weeksnamesort
    
  - dimension: weeksnamesort
    type: number
    sql: split_part(weeksname, ' ', 2)::int

  - measure: count
    type: count
    drill_fields: [weeksname]

