- view: fact_activity_v
  sql_table_name: DW.FACT_ACTIVITY_V
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

  - dimension: normalscore
    type: number
    sql: ${TABLE}.NORMALSCORE

  - dimension: possiblescore
    type: number
    sql: ${TABLE}.POSSIBLESCORE

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - dimension: scaledscore
    type: number
    sql: ${TABLE}.SCALEDSCORE

  - dimension: student
    type: string
    sql: ${TABLE}.STUDENT

  - dimension: studentid
    type: string
    sql: ${TABLE}.STUDENTID

  - dimension: timeliness
    type: string
    sql: ${TABLE}.TIMELINESS

  - dimension: timespent
    type: string
    sql: ${TABLE}.TIMESPENT

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: [institutionname, coursename]

