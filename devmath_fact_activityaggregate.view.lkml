view: fact_activityaggregate {
  sql_table_name: DW.FACT_ACTIVITYAGGREGATE ;;

  dimension: aggregateuri {
    type: string
    sql: ${TABLE}.AGGREGATEURI ;;
  }

  dimension: coursekey {
    type: string
    sql: ${TABLE}.COURSEKEY ;;
  }

  dimension_group: creationdate {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATIONDATE ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.GUID ;;
  }

  dimension_group: lastupdatedate {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LASTUPDATEDATE ;;
  }

  measure: normalscore {
    type: average
    sql: ${TABLE}.NORMALSCORE ;;
  }

  measure: possiblescore {
    type: average
    sql: ${TABLE}.POSSIBLESCORE ;;
  }

  dimension_group: submissiondate {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SUBMISSIONDATE ;;
  }

  measure: student_totalgrade {
    type: number
    sql: SUM(${TABLE}.NORMALSCORE * ${TABLE}.POSSIBLESCORE) over (partition by guid) / SUM(${TABLE}.POSSIBLESCORE) over (partition by guid) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
