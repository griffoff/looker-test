- view: fact_learningobjective
  sql_table_name: DW.FACT_LEARNINGOBJECTIVE
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

  - dimension: checkin_mastery
    type: number
    sql: ${TABLE}.CHECKIN_MASTERY

  - dimension: courseid
    type: string
    sql: ${TABLE}.COURSEID

  - dimension: institutionid
    type: string
    sql: ${TABLE}.INSTITUTIONID

  - dimension: instructorid
    type: string
    sql: ${TABLE}.INSTRUCTORID

  - dimension: learningobjectiveid
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVEID

  - dimension: loaddate
    type: string
    sql: ${TABLE}.LOADDATE

  - dimension: mastery
    type: number
    sql: ${TABLE}.MASTERY

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - dimension: studentid
    type: string
    sql: ${TABLE}.STUDENTID

  - measure: count
    type: count
    drill_fields: [id]

