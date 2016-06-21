- view: full_student_course_metrics
  sql_table_name: DW.FULL_STUDENT_COURSE_METRICS
  fields:

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - measure: duration
    type: number
    sql: ${TABLE}.DURATION

  - measure: flashcard_count
    type: number
    sql: ${TABLE}.FLASHCARD_COUNT

  - measure: frequency
    type: number
    sql: ${TABLE}.FREQUENCY

  - measure: gap_week
    type: number
    sql: ${TABLE}.GAP_WEEK

  - measure: highlight_count
    type: number
    sql: ${TABLE}.HIGHLIGHT_COUNT

  - measure: intensity
    type: number
    sql: ${TABLE}.INTENSITY

  - measure: login_count
    type: number
    sql: ${TABLE}.LOGIN_COUNT

  - dimension: octant
    type: string
    sql: ${TABLE}.OCTANT

  - measure: pages_read
    type: number
    sql: ${TABLE}.PAGES_READ

  - measure: reading_count
    type: number
    sql: ${TABLE}.READING_COUNT

  - measure: recency
    type: number
    sql: ${TABLE}.RECENCY

  - measure: score
    type: number
    sql: ${TABLE}.SCORE

  - dimension: type_of_student
    type: string
    sql: ${TABLE}.TYPE_OF_STUDENT

  - dimension: user_guid
    type: string
    sql: ${TABLE}.USER_GUID

  - dimension: weeksname
    type: string
    sql: ${TABLE}.WEEKSNAME

  - measure: count
    type: count
    drill_fields: [weeksname]

