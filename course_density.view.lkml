view: course_density {
  sql_table_name: DW_DEVMATH.COURSE_DENSITY ;;

  dimension: coursekey {
    type: string
    primary_key: yes
    sql: ${TABLE}.COURSEKEY ;;
  }

  dimension: density {
    type: string
    sql: ${TABLE}.DENSITY ;;
  }

  dimension: density_tier {
    type: tier
    style: relational
    tiers: [
      0,
      0.01,
      0.02,
      0.03,
      0.04,
      0.05,
      0.06,
      0.07,
      0.08,
      0.09,
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
    sql: ${TABLE}.DENSITY ;;
  }

  measure: mdensity {
    type: average
    sql: ${TABLE}.DENSITY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}