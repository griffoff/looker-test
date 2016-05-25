- view: fact_activity
  sql_table_name: DW.FACT_ACTIVITY
  fields:

  - measure: avg_normalscore
    label: 'average normalscore'
    type: average
    value_format: '#,##0.0%'
    sql: ${TABLE}.NORMALSCORE
    drill_fields: dim_student.student_guid, dim_learningobjective.learningoutcome, dim_learningobjective.learningobjective, dim_activity.activitydescription, fact_activity.scaledScore,  fact_activity.possibleScore,  fact_activity.normalScore

  - measure: possiblescore
    type: average
    sql: ${TABLE}.POSSIBLESCORE

  - measure: scaledscore
    type: average
    sql: ${TABLE}.SCALEDSCORE

  - measure: timeliness
    type: average
    value_format: '#,##0.0'
    sql: ${TABLE}.TIMELINESS

  - measure: timespent
    type: average
    value_format: '#,##0.0'
    sql: ${TABLE}.TIMESPENT

  - measure: count
    type: count
    drill_fields: [id]
    
  - dimension: id
    primary_key: true
    type: string
    hidden: true
    sql: ${TABLE}.ID

  - dimension: activityid
    type: string
    hidden: true
    sql: ${TABLE}.ACTIVITYID

  - dimension: activitystartdatekey
    type: string
    hidden: true
    sql: ${TABLE}.ACTIVITYSTARTDATEKEY

  - dimension: courseid
    type: string
    hidden: true
    sql: ${TABLE}.COURSEID

  - dimension: institutionid
    type: string
    hidden: true
    sql: ${TABLE}.INSTITUTIONID

  - dimension: instructorid
    type: string
    hidden: true
    sql: ${TABLE}.INSTRUCTORID

  - dimension: overridedate
    type: string
    hidden: true
    sql: ${TABLE}.OVERRIDEDATE

  - dimension: productid
    type: string
    hidden: true
    sql: ${TABLE}.PRODUCTID

  - dimension: studentid
    type: string
    hidden: true
    sql: ${TABLE}.STUDENTID
