- view: et_report1
  label: 'Engagement Toolkit - Time Spent'
  sql_table_name: DW.ET_REPORT1
  fields:

  - measure: avg_score
    type: average
    sql: ${TABLE}.AVG_SCORE
    
  - dimension: avg_score_bin_sort
    type: number
    sql: ${TABLE}.AVG_SCORE_BIN_SORT
    hidden: true

  - dimension: avg_score_bin
    label: 'Avg. Score bin'
    type: string
    sql: ${TABLE}.AVG_SCORE_BIN
    order_by_field: avg_score_bin_sort

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY
    hidden: true

  - dimension: discipline
    type: string
    sql: ${TABLE}.DISCIPLINE
    hidden: true
    
  - dimension: isbn13
    type: string
    sql: ${TABLE}.ISBN13
    hidden: true

  - dimension: login_bin
    label: 'Logins bin'
    type: string
    sql: ${TABLE}.LOGIN_BIN

  - measure: login_per_week
    type: average
    label: 'Logins per week'
    sql: ${TABLE}.LOGIN_PER_WEEK

  - dimension: partyid
    type: string
    sql: ${TABLE}.PARTYID
    hidden: true
    
  - dimension: platform
    type: string
    sql: ${TABLE}.PLATFORM
    hidden: true

  - dimension: time_spent_bin_sort
    type: number
    sql: ${TABLE}.TIME_SPENT_BIN_SORT
    hidden: true
    
  - dimension: time_spent_bin
    type: string
    label: 'Time Spent bin'
    sql: ${TABLE}.TIME_SPENT_BIN
    hidden: true
    order_by_field: time_spent_bin_sort

  - measure: time_spent_per_week
    label: 'Time spent per week'
    type: average
    sql: ${TABLE}.TIME_SPENT_PER_WEEK

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE
    hidden: true

  - measure: count
    label: 'No. of Students'
    type: count
    drill_fields: []

