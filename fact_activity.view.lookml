- view: fact_activity
  sql_table_name: DW.FACT_ACTIVITY
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

  - measure: avg_normalscore
    label: 'average normalscore'
    type: average
    value_format: '#,##0.0%'
    sql: ${TABLE}.NORMALSCORE

  - dimension: overridedate
    type: string
    sql: ${TABLE}.OVERRIDEDATE

  - measure: possiblescore
    type: average
    sql: ${TABLE}.POSSIBLESCORE

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - measure: scaledscore
    type: average
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

  - measure: count
    type: count
    drill_fields: [id]

