view: et_time_spent {
  label: "Engagement Toolkit - Time Spent"
  sql_table_name: REPORTS.ET_TIME_SPENT ;;

  dimension: coursekey {
    label: "Course Key"
    type: string
    sql: ${TABLE}.COURSEKEY ;;
  }

  dimension: discipline {
    label: "Discipline"
    type: string
    hidden: yes
    sql: ${TABLE}.DISCIPLINE ;;
  }

  dimension: grades {
    label: "Grade bucket"
    type: string
    sql: ${TABLE}.GRADES ;;
  }

  measure: lessthanonehour_percent {
    label: "< 1 hr"
    type: average
    sql: ${TABLE}.LESSTHANONEHOUR_PERCENT ;;
  }

  measure: onetothrehours_percent {
    label: "1 - 3 hrs"
    type: average
    sql: ${TABLE}.ONETOTHREHOURS_PERCENT ;;
  }

  measure: threeplushours_percent {
    label: "> 3 hrs"
    type: average
    sql: ${TABLE}.THREEPLUSHOURS_PERCENT ;;
  }

  dimension: title {
    type: string
    hidden: yes
    sql: ${TABLE}.TITLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
