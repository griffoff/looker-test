- view: dim_activity
  sql_table_name: DW_GA.DIM_ACTIVITY
  fields:

  - dimension: activitydescription
    type: string
    sql: ${TABLE}.ACTIVITYDESCRIPTION

  - dimension: activityid
    type: number
    sql: ${TABLE}.ACTIVITYID
    primary_key: true

  - dimension: activitysort
    type: string
    sql: ${TABLE}.ACTIVITYSORT

  - dimension: activitytitle
    type: string
    sql: ${TABLE}.ACTIVITYTITLE

  - dimension: activitytype
    type: string
    sql: ${TABLE}.ACTIVITYTYPE

  - dimension: cgi
    type: string
    sql: ${TABLE}.CGI

  - measure: count
    type: count
    drill_fields: []

