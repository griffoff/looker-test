view: dim_course {
  label: "Course"
  sql_table_name: DW_GA.DIM_COURSE ;;

  dimension: cgi {
    label: "Course CGI"
    type: string
    sql: ${TABLE}.CGI ;;
  }

  dimension: courseid {
    type: string
    sql: ${TABLE}.COURSEID ;;
    hidden: yes
  }

  dimension: coursekey {
    label: "Course Key"
    type: string
    sql: ${TABLE}.COURSEKEY ;;
    primary_key: yes

    link: {
      label: "Engagement Toolkit (Looker)"
      url: "https://cengage.looker.com/dashboards/test::engagement_toolkit?filter_course={{value}}"
    }

    link: {
      label: "Engagement Toolkit (Dev)"
      url: "http://dashboard-dev.cengage.info/engtoolkit/{{value}}"
    }
  }

  dimension: coursename {
    label: "Course Name"
    type: string
    sql: ${TABLE}.COURSENAME ;;

    link: {
      label: "Engagement Toolkit Looker"
      url: "https://cengage.looker.com/dashboards/test::engagement_toolkit?filter_course={{dim_course.coursekey._value}}"
    }
  }

  dimension: coursetitle {
    type: string
    label: "Course Title"
    sql: ${TABLE}.COURSETITLE ;;
  }

  dimension: dw_ldid {
    type: string
    sql: ${TABLE}.DW_LDID ;;
    hidden: yes
  }

  dimension_group: dw_ldts {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS ;;
    hidden: yes
  }

  dimension: enddatekey {
    type: string
    sql: ${TABLE}.ENDDATEKEY ;;
    hidden: yes
  }

  dimension: filterflag {
    label: "Exclusion Rule (filter flag)"
    type: string
    sql: ${TABLE}.FILTERFLAG ;;
  }

  dimension: institutionid {
    type: string
    sql: ${TABLE}.INSTITUTIONID ;;
    hidden: yes
  }

  dimension: learningcourse {
    type: string
    sql: ${TABLE}.LEARNINGCOURSE ;;
    hidden: yes
  }

  dimension_group: loaddate {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.LOADDATE ;;
    hidden: yes
  }

  dimension: productid {
    type: string
    sql: ${TABLE}.PRODUCTID ;;
    hidden: yes
  }

  dimension: productplatformid {
    type: string
    sql: ${TABLE}.PRODUCTPLATFORMID ;;
    hidden: yes
  }

  dimension: startdatekey {
    type: string
    sql: ${TABLE}.STARTDATEKEY ;;
    hidden: yes
  }

  dimension: length_of_course {
    type: number
    sql: case when startdatekey > 0 and enddatekey > 0 then datediff(day,to_date((startdatekey::varchar),'YYYYMMDD'),to_date((enddatekey::varchar),'YYYYMMDD')) else 0 end ;;
    value_format: "0 \d\a\y\s"
    hidden: no
  }

  dimension: length_of_course_weeks {
    type: number
    sql: case when startdatekey > 0 and enddatekey > 0 then datediff(week,to_date((startdatekey::varchar),'YYYYMMDD'),to_date((enddatekey::varchar),'YYYYMMDD')) else 0 end ;;
    value_format: "0 \w\e\e\k\s"
    hidden: no
  }

  dimension: length_of_course_weeks_buckets {
    type: tier
    tiers: [12, 16, 18, 20, 52]
    style: integer
    sql: ${length_of_course_weeks} ;;
    value_format: "0 \w\e\e\k\s"
    hidden: no
  }

  measure: count {
    label: "No. of Courses"
    type: count
    drill_fields: [coursename]
  }
}
