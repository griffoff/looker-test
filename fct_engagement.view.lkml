view: fct_engagement {
  sql_table_name: COVALENT.FCT_ENGAGEMENT ;;

  dimension: courseuri {
    type: string
    sql: ${TABLE}.COURSEURI ;;
  }

  dimension_group: date {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DATE ;;
  }

  dimension: flashcards {
    type: string
    sql: ${TABLE}.FLASHCARDS ;;
  }

  dimension: highlights {
    type: string
    sql: ${TABLE}.HIGHLIGHTS ;;
  }

  dimension: logins {
    type: string
    sql: ${TABLE}.LOGINS ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: readingactivities {
    type: string
    sql: ${TABLE}.READINGACTIVITIES ;;
  }

  dimension: searchesconducted {
    type: string
    sql: ${TABLE}.SEARCHESCONDUCTED ;;
  }

  dimension: totalactivities {
    type: string
    sql: ${TABLE}.TOTALACTIVITIES ;;
  }

  dimension: userguid {
    type: string
    sql: ${TABLE}.USERGUID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
