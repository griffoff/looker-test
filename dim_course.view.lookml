- view: dim_course
  label: 'Course'
  sql_table_name: DW_GA.DIM_COURSE
  fields:

  - dimension: cgi
    label: 'Course CGI'
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
    links:
    - label: Engagement Toolkit (Looker)
      url: https://cengage.looker.com/dashboards/test::engagement_toolkit?filter_course={{value}}
    - label: Engagement Toolkit (Dev)
      url: http://dashboard-dev.cengage.info/engtoolkit/{{value}}

  - dimension: coursename
    label: 'Course Name'
    type: string
    sql: ${TABLE}.COURSENAME
    links:
    - label: Engagement Toolkit Looker
      url: https://cengage.looker.com/dashboards/test::engagement_toolkit?filter_course={{dim_course.coursekey._value}}

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

  - dimension: length_of_course
    type: number
    sql: case when startdatekey > 0 and enddatekey > 0 then datediff(day,to_date((startdatekey::varchar),'YYYYMMDD'),to_date((enddatekey::varchar),'YYYYMMDD')) else 0 end
    value_format: '0 \d\a\y\s'
    hidden: false
    
  - dimension: length_of_course_weeks
    type: number
    sql: case when startdatekey > 0 and enddatekey > 0 then datediff(week,to_date((startdatekey::varchar),'YYYYMMDD'),to_date((enddatekey::varchar),'YYYYMMDD')) else 0 end
    value_format: '0 \w\e\e\k\s'
    hidden: false
    
  - dimension: length_of_course_weeks_buckets
    type: tier
    tiers: [12, 16, 18, 20, 52]
    style: integer
    sql: ${length_of_course_weeks}
    value_format: '0 \w\e\e\k\s'
    hidden: false

  - measure: count
    label: 'No. of Courses'
    type: count
    drill_fields: [coursename]

