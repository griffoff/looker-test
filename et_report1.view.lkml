view: et_report1 {
  label: "Engagement Toolkit - Time Spent"
  sql_table_name: DW.ET_REPORT1 ;;

  measure: score {
    type: average
    sql: ${TABLE}.SCORE ;;
  }

  dimension: score_bin_sort {
    type: number
    sql: ${TABLE}.SCORE_BIN_SORT ;;
    hidden: yes
  }

  dimension: score_bin {
    label: "Avg. Score bin"
    type: string
    sql: ${TABLE}.SCORE_BIN ;;
    order_by_field: score_bin_sort
  }

  dimension: coursekey {
    type: string
    sql: ${TABLE}.COURSE_KEY ;;
    hidden: yes
  }

  dimension: user_guid {
    type: string
    sql: ${TABLE}.USER_GUID ;;
  }

  dimension: login_bin {
    label: "Logins bin"
    type: string
    sql: ${TABLE}.LOGINS_BIN ;;
  }

  measure: login_per_week {
    type: average
    label: "Logins per week"
    sql: ${TABLE}.LOGINS_PER_WEEK ;;
  }

  dimension: time_spent_bin_sort {
    type: number
    sql: ${TABLE}.TIME_SPENT_BIN_SORT ;;
    hidden: yes
  }

  dimension: time_spent_bin {
    type: string
    label: "Time Spent bin"
    sql: ${TABLE}.TIME_SPENT_BIN ;;
    order_by_field: time_spent_bin_sort
  }

  measure: time_spent_per_week {
    label: "Time spent per week"
    type: average
    sql: ${TABLE}.TIME_SPENT_PER_WEEK ;;
  }

  measure: count {
    label: "No. of Students"
    type: count
    drill_fields: []
  }
}
