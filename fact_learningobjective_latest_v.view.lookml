- view: fact_learningobjective_latest_v
  sql_table_name: DW.FACT_LEARNINGOBJECTIVE_LATEST_V
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

  - dimension: latest
    type: string
    sql: ${TABLE}.LATEST

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

  - dimension: version
    type: string
    sql: ${TABLE}.VERSION

  - measure: count
    type: count
    drill_fields: [id]

