- view: fact_learningobjective_v
  sql_table_name: DW.FACT_LEARNINGOBJECTIVE_V
  fields:

  - dimension: activitycgi
    type: string
    sql: ${TABLE}.ACTIVITYCGI

  - dimension: activityid
    type: string
    sql: ${TABLE}.ACTIVITYID

  - dimension: activitysort
    type: string
    sql: ${TABLE}.ACTIVITYSORT

  - dimension: activitytitle
    type: string
    sql: ${TABLE}.ACTIVITYTITLE

  - dimension: activitytype
    type: string
    sql: ${TABLE}.ACTIVITYTYPE

  - dimension: checkin_mastery
    type: number
    sql: ${TABLE}.CHECKIN_MASTERY

  - dimension: coursecgi
    type: string
    sql: ${TABLE}.COURSECGI

  - dimension: courseid
    type: string
    sql: ${TABLE}.COURSEID

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - dimension: coursename
    type: string
    sql: ${TABLE}.COURSENAME

  - dimension: coursetitle
    type: string
    sql: ${TABLE}.COURSETITLE

  - dimension: institutionid
    type: string
    sql: ${TABLE}.INSTITUTIONID

  - dimension: institutionname
    type: string
    sql: ${TABLE}.INSTITUTIONNAME

  - dimension: instructor
    type: string
    sql: ${TABLE}.INSTRUCTOR

  - dimension: instructor_guid
    type: string
    sql: ${TABLE}.INSTRUCTOR_GUID

  - dimension: instructorid
    type: string
    sql: ${TABLE}.INSTRUCTORID

  - dimension: isbn13
    type: string
    sql: ${TABLE}.ISBN13

  - dimension: learningobjective
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVE

  - dimension: learningobjectiveid
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVEID

  - dimension: learningoutcome
    type: string
    sql: ${TABLE}.LEARNINGOUTCOME

  - dimension: mastery
    type: number
    sql: ${TABLE}.MASTERY

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - dimension: student
    type: string
    sql: ${TABLE}.STUDENT

  - dimension: student_guid
    type: string
    sql: ${TABLE}.STUDENT_GUID

  - dimension: studentid
    type: string
    sql: ${TABLE}.STUDENTID

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: [institutionname, coursename]

