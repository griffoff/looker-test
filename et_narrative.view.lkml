view: et_narrative {
  label: "Engagement Toolkit - Time Spent"
  sql_table_name: REPORTS.ET_NARRATIVE ;;

  dimension: narrative_general {
    label: "General Narrative"
    type: string
    sql: ${TABLE}.NARRATIVE ;;
    html: <div style="white-space:normal;padding:10px;">
        <span style="width:100%; float:left; font: bold, 16pt, italic">{{et_narrative.narrative_level._value}}</span>
        <br>
        <span style="width:100%; align: centre; color:red">{{ rendered_value }}</span>
      </div>
      ;;
  }

  dimension: narrative_level {
    label: "Narrative Level"
    type: string
    sql: ${TABLE}.NARRATIVE_LEVEL ;;
  }

  dimension: coursekey {
    label: "Course Key"
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.coursekey ;;
  }
}
