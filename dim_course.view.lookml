- view: dim_course
  sql_table_name: DW.DIM_COURSE
  fields:

  - dimension: cgi
    type: string
    sql: ${TABLE}.CGI

  - dimension: courseid
    type: string
    sql: ${TABLE}.COURSEID
    primary_key: true

  - dimension: coursekey
    type: string
    sql: ${TABLE}.COURSEKEY

  - dimension: coursename
    type: string
    sql: ${TABLE}.COURSENAME

  - dimension: coursetitle
    type: string
    sql: ${TABLE}.COURSETITLE

  - dimension: dw_ldid
    type: string
    sql: ${TABLE}.DW_LDID

  - dimension_group: dw_ldts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS

  - dimension: enddatekey
    type: string
    sql: ${TABLE}.ENDDATEKEY

  - dimension: filterflag
    type: string
    sql: ${TABLE}.FILTERFLAG

  - dimension: institutionid
    type: string
    sql: ${TABLE}.INSTITUTIONID

  - dimension: learningcourse
    type: string
    sql: ${TABLE}.LEARNINGCOURSE

  - dimension_group: loaddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LOADDATE

  - dimension: productid
    type: string
    sql: ${TABLE}.PRODUCTID

  - dimension: productplatformid
    type: string
    sql: ${TABLE}.PRODUCTPLATFORMID

  - dimension: startdatekey
    type: string
    sql: ${TABLE}.STARTDATEKEY

  - measure: count
    type: count
    drill_fields: [coursename]

