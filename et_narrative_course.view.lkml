view: et_narrative_course {
  label: "Engagement Toolkit - Time Spent"
  sql_table_name: DW.ET_NARRATIVE_COURSE ;;

  dimension: narrative_course {
    label: "Course Level Narrative"
    type: string
    sql: ${TABLE}.NARRATIVE ;;
    html: '<font style="word-wrap: break-word;">{{ value }}</font>'
      ;;
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
