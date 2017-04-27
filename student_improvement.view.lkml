view: student_improvement {
  sql_table_name: DW_DEVMATH.STUDENT_IMPROVEMENT ;;

  measure: cntr {
    type: number
    sql: ${TABLE}.CNTR ;;
  }

  dimension: weeksname {
    label: "Week of Course"
    type: string
    sql: ${TABLE}.WEEKSNAME ;;
    order_by_field: weeksnamesort
  }

  dimension: weeksnamesort {
    label: "Week No."
    type: number
    sql: split_part(weeksname, ' ', 2)::int ;;
  }

  dimension: final_type_of_student {
    type: string
    sql: ${TABLE}.FINAL_TYPE_OF_STUDENT ;;
  }

  dimension: initial_type_of_student {
    type: string
    sql: ${TABLE}.INITIAL_TYPE_OF_STUDENT ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension: frequency_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.DURATION ;;
  }

  dimension: duration_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.duration ;;
  }

  dimension: login_count {
    type: string
    sql: ${TABLE}.LOGIN_COUNT ;;
  }

  dimension: login_count_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.LOGIN_COUNT ;;
  }

  dimension: intensity {
    type: string
    sql: ${TABLE}.INTENSITY ;;
  }

  dimension: intensity_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.intensity ;;
  }

  dimension: recency {
    type: string
    sql: ${TABLE}.RECENCY ;;
  }

  dimension: recency_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.RECENCY ;;
  }

  dimension: active_days_logins {
    type: string
    sql: ${TABLE}.active_days_logins ;;
  }

  dimension: active_days_logins_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.1,
      0.2,
      0.3,
      0.4,
      0.5,
      0.6,
      0.7,
      0.8,
      0.9,
      1
    ]
    sql: ${TABLE}.active_days_logins ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: pct {
    type: percent_of_total
    sql: ${count} ;;
  }
}