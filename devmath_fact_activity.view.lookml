- view: fact_activity
  label: 'Activity'
  sql_table_name: DW.FACT_ACTIVITY
  fields:

  - measure: avg_normalscore
    label: 'Avg. Score'
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
    label: 'Avg. Timeliness (days)'
    description: 'Average number of days before due date activity is completed'
    value_format: '#,##0.0'
    sql: -${TABLE}.TIMELINESS/24.0

  - measure: timespent
    label: 'Avg. Time spent (secs)'
    description: 'Average time spent on activities'
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
