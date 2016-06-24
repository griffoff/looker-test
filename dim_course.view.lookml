- view: dim_course
  label: 'Course'
  sql_table_name: DW_GA.DIM_COURSE
  fields:

  - dimension: cgi
    type: string
    sql: ${TABLE}.CGI

  - dimension: courseid
    type: string
    sql: ${TABLE}.COURSEID
    hidden: true

  - dimension: coursekey
    label: 'Course Key'
    type: string
    sql: ${TABLE}.COURSEKEY
    primary_key: true

  - dimension: coursename
    label: 'Course Name'
    type: string
    sql: ${TABLE}.COURSENAME

  - dimension: coursetitle
    type: string
    label: 'Course Title'
    sql: ${TABLE}.COURSETITLE

  - dimension: dw_ldid
    type: string
    sql: ${TABLE}.DW_LDID
    hidden: true

  - dimension_group: dw_ldts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS
    hidden: true

  - dimension: enddatekey
    type: string
    sql: ${TABLE}.ENDDATEKEY
    hidden: true

  - dimension: filterflag
    label: 'Exclusion Rule (filter flag)'
    type: string
    sql: ${TABLE}.FILTERFLAG

  - dimension: institutionid
    type: string
    sql: ${TABLE}.INSTITUTIONID
    hidden: true

  - dimension: learningcourse
    type: string
    sql: ${TABLE}.LEARNINGCOURSE
    hidden: true

  - dimension_group: loaddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LOADDATE
    hidden: true

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID
    hidden: true
  
  - dimension: productplatformid
    type: string
    sql: ${TABLE}.PRODUCTPLATFORMID
    hidden: true

  - dimension: startdatekey
    type: string
    sql: ${TABLE}.STARTDATEKEY
    hidden: true

  - measure: count
    label: 'No. of Courses'
    type: count
    drill_fields: [coursename]

