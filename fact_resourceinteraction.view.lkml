view: fact_resourceinteraction {
  sql_table_name: DW.FACT_RESOURCEINTERACTION ;;

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: coursekey {
    type: string
    hidden: yes
    sql: ${TABLE}.COURSEKEY ;;
  }

  measure: durationseconds {
    type: average
    sql: ${TABLE}.DURATIONSECONDS ;;
  }

  measure: durationminutes {
    type: average
    sql: ${TABLE}.DURATIONSECONDS / 60.0 ;;
  }

  measure: durationhours {
    type: average
    sql: ${TABLE}.DURATIONSECONDS / 60.0 / 60.0 ;;
  }

  dimension_group: eventtime {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension: guid {
    type: string
    hidden: yes
    sql: ${TABLE}.GUID ;;
  }

  dimension: resourceinteractionuri {
    type: string
    sql: ${TABLE}.RESOURCEINTERACTIONURI ;;
  }

  dimension: resourceuri {
    type: string
    sql: ${TABLE}.RESOURCEURI ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
