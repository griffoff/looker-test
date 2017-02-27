view: student_course_metrics {
  sql_table_name: DW.STUDENT_COURSE_METRICS ;;

  dimension: coursekey {
    type: string
    sql: ${TABLE}.COURSEKEY ;;
  }

  measure: duration {
    type: average
    sql: ${TABLE}.DURATION ;;
  }

  measure: frequency {
    type: average
    sql: ${TABLE}.FREQUENCY ;;
  }

  measure: gap_week {
    type: average
    sql: ${TABLE}.GAP_WEEK ;;
  }

  measure: intensity {
    type: average
    sql: ${TABLE}.INTENSITY ;;
  }

  dimension: octant {
    type: string
    sql: ${TABLE}.OCTANT ;;
    order_by_field: octant_sort
  }

  dimension: octant_sort {
    type: number
    hidden: yes
    sql: case when octant = 'RFI' then 1 when octant = 'R.I' then 2 when octant = '.FI' then 3 when octant = '..I' then 4 when octant = 'RF.' then 5 when octant = 'R..' then 6 when octant = '.F.' then 7 when octant = '...' then 8 when octant = 'N/A' then 9 end ;;
  }

  measure: pages_read {
    type: average
    sql: ${TABLE}.PAGES_READ ;;
  }

  dimension: pages_read_bucket {
    type: number
    sql: round(${TABLE}.PAGES_READ, 1) ;;
  }

  measure: recency {
    type: average
    sql: ${TABLE}.RECENCY ;;
  }

  measure: logins {
    type: average
    sql: ${TABLE}.login_count ;;
  }

  measure: highlights {
    type: average
    sql: ${TABLE}.highlight_count ;;
  }

  measure: readings {
    type: average
    sql: ${TABLE}.reading_count ;;
  }

  measure: flashcards {
    type: average
    sql: ${TABLE}.flashcard_count ;;
  }

  dimension: score_bucket {
    type: number
    sql: round(nullif(${TABLE}.SCORE, 'N/A')::float, 1) ;;
  }

  measure: score {
    type: average
    sql: nullif(${TABLE}.SCORE, 'N/A')::float ;;
  }

  dimension: type_of_student {
    type: string
    sql: ${TABLE}.TYPE_OF_STUDENT ;;
  }

  dimension: user_guid {
    type: string
    sql: ${TABLE}.USER_GUID ;;

    link: {
      label: "Student Dashboard"
      url: "https://cengage.looker.com/dashboards/test::student_activity?student_filter={{ value }}&course_filter={{ student_course_metrics.coursekey }}"
    }

    link: {
      label: "Analytics Diagnostic Tool"
      url: "https://analytics-tools.cengage.info/diagnostictool/#/user/view/production/userIdentifier/{{ value }}"
    }
  }

  dimension: weeksname {
    type: string
    sql: ${TABLE}.WEEKSNAME ;;
    order_by_field: weeksnamesort
  }

  dimension: weeksnamesort {
    type: number
    sql: split_part(weeksname, ' ', 2)::int ;;
  }

  measure: count {
    type: count
    drill_fields: [weeksname]
  }
}
