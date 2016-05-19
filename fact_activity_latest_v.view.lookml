- view: fact_activity_latest_v
  sql_table_name: DW.FACT_ACTIVITY_LATEST_V
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: activityid
    type: string
    sql: ${TABLE}.ACTIVITYID

  - dimension: activitystartdatekey
    type: string
    sql: ${TABLE}.ACTIVITYSTARTDATEKEY

  - dimension: courseid
    type: string
    sql: ${TABLE}.COURSEID

  - dimension: institutionid
    type: string
    sql: ${TABLE}.INSTITUTIONID

  - dimension: instructorid
    type: string
    sql: ${TABLE}.INSTRUCTORID

  - dimension: latest
    type: string
    sql: ${TABLE}.LATEST

  - dimension: normalscore
    type: number
    sql: ${TABLE}.NORMALSCORE

  - dimension: overridedate
    type: string
    sql: ${TABLE}.OVERRIDEDATE

  - dimension: possiblescore
    type: number
    sql: ${TABLE}.POSSIBLESCORE

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - dimension: scaledscore
    type: number
    sql: ${TABLE}.SCALEDSCORE

  - dimension: studentid
    type: string
    sql: ${TABLE}.STUDENTID

  - dimension: timeliness
    type: string
    sql: ${TABLE}.TIMELINESS

  - dimension: timespent
    type: number
    sql: ${TABLE}.TIMESPENT

  - dimension: version
    type: string
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: [id]

