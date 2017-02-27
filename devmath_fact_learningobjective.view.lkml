view: fact_learningobjective {
  label: "Learning Objective"
  sql_table_name: DW.FACT_LEARNINGOBJECTIVE ;;

  measure: checkin_mastery {
    type: average
    sql: ${TABLE}.CHECKIN_MASTERY ;;
  }

  measure: mastery {
    type: average
    sql: ${TABLE}.MASTERY ;;
  }

  measure: mastery_increase {
    type: average
    sql: coalesce(${TABLE}.MASTERY, ${TABLE}.CHECKIN_MASTERY) - ${TABLE}.CHECKIN_MASTERY ;;
    drill_fields: ["dim_student.student_guid, dim_learningobjective.learningoutcome, dim_learningobjective.learningobjective, dim_activity.activitydescription, fact_activity.scaledScore,  fact_activity.possibleScore,  fact_activity.normalScore"]
    value_format: "#,##0.0%"
    html: {% if value > 50 %}
        <font color="darkgreen" size="{{ value }}">{{ rendered_value }}</font>
      {% elsif value > 0 %}
        <font color="goldenrod" size="{{ value }}">{{ rendered_value }}</font>
      {% else %}
        <font color="darkred">{{ rendered_value }}</font>
      {% endif %}
      ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.ID ;;
  }

  dimension: activityid {
    type: string
    hidden: yes
    sql: ${TABLE}.ACTIVITYID ;;
  }

  dimension: activitystartdatekey {
    type: string
    hidden: yes
    sql: ${TABLE}.ACTIVITYSTARTDATEKEY ;;
  }

  dimension: courseid {
    type: string
    hidden: yes
    sql: ${TABLE}.COURSEID ;;
  }

  dimension: institutionid {
    type: string
    hidden: yes
    sql: ${TABLE}.INSTITUTIONID ;;
  }

  dimension: instructorid {
    type: string
    hidden: yes
    sql: ${TABLE}.INSTRUCTORID ;;
  }

  dimension: learningobjectiveid {
    type: string
    hidden: yes
    sql: ${TABLE}.LEARNINGOBJECTIVEID ;;
  }

  dimension: loaddate {
    type: string
    hidden: yes
    sql: ${TABLE}.LOADDATE ;;
  }

  dimension: productid {
    type: string
    hidden: yes
    sql: ${TABLE}.PRODUCTID ;;
  }

  dimension: studentid {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENTID ;;
  }
}
