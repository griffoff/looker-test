view: et_report1 {
  label: "Engagement Toolkit - Time Spent"
  sql_table_name: REPORTS.ET_REPORT1 ;;

  dimension: score {
    type: number
    sql: ${TABLE}.AVG_SCORE ;;
    hidden: yes
  }

  measure: avg_score {
    type: average
    sql: ${score} ;;
  }

#   dimension: score_bin_sort {
#     type: number
#     sql: ${TABLE}.SCORE_BIN_SORT ;;
#     hidden: yes
#   }

  dimension: score_bin {
    label: "Avg. Score bin"
    type: tier
    tiers: [0, 0.6, 0.8]
    style: relational
    sql: ${score} ;;
    #order_by_field: score_bin_sort
  }

  dimension: coursekey {
    type: string
    sql: ${TABLE}.COURSEKEY ;;
    hidden: yes
  }

  dimension: partyid {
    type: number
    sql: ${TABLE}.PARTYID ;;
    value_format: "0"
  }

#   dimension: login_bin {
#     label: "Logins bin"
#     type: string
#     sql: ${TABLE}.LOGIN_BIN ;;
#   }

  dimension: login_bin {
    label: "Logins per week bin"
    type: tier
    tiers: [3,6,10,11]
    style: integer
    sql: ${login_per_week} ;;
  }

  dimension: login_per_week {
    type: number
    hidden: yes
    label: "Logins per week"
    sql: ${TABLE}.LOGIN_PER_WEEK ;;
  }

  measure: login_per_week_avg {
    type: average
    label: "Logins per week (avg)"
    sql: ${login_per_week} ;;
  }

#   dimension: time_spent_bin_sort {
#     type: number
#     sql: ${TABLE}.TIME_SPENT_BIN_SORT ;;
#     hidden: yes
#   }

#   dimension: time_spent_bin {
#     type: string
#     label: "Time Spent bin"
#     sql: ${TABLE}.TIME_SPENT_BIN ;;
#     #order_by_field: time_spent_bin_sort
#   }

  dimension: time_spent_bin {
    type: tier
    tiers: [1,3]
    style: relational
    label: "Time Spent bin (hrs)"
    sql: ${time_spent_per_week_hrs} ;;
    #order_by_field: time_spent_bin_sort
  }

  dimension: time_spent_per_week_hrs {
    type: number
    label: "Time spent per week (hrs)"
    hidden: yes
    sql: ${TABLE}.TIME_SPENT_PER_WEEK ;;
  }

  dimension: time_spent_per_week {
    type: number
    label: "Time spent per week"
    hidden: yes
    value_format: "h:mm:ss"
    sql: ${TABLE}.TIME_SPENT_PER_WEEK / 24.0 ;;
  }

  measure: time_spent_per_week_avg {
    label: "Time spent per week (avg)"
    type: average
    sql: ${time_spent_per_week} ;;
    value_format: "h:mm:ss"
  }

  measure: count {
    label: "No. of Students"
    type: count
    drill_fields: []
  }
}
