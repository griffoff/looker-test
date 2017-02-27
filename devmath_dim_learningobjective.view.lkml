view: dim_learningobjective {
  label: "Learning Objective"
  sql_table_name: DW.DIM_LEARNINGOBJECTIVE ;;

  dimension: learningobjective {
    label: "Objective"
    type: string
    sql: ${TABLE}.LEARNINGOBJECTIVE ;;
  }

  dimension: learningobjectiveid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.LEARNINGOBJECTIVEID ;;
  }

  dimension: learningoutcome {
    label: "Outcome"
    type: string
    sql: ${TABLE}.LEARNINGOUTCOME ;;
  }

  dimension: lobjectiveid {
    type: string
    hidden: yes
    sql: ${TABLE}.LOBJECTIVEID ;;
  }

  dimension: loutcomeid {
    type: string
    hidden: yes
    sql: ${TABLE}.LOUTCOMEID ;;
  }

  measure: learningobjectivecount {
    label: "No. of Learning Objectives"
    type: count
    drill_fields: []
  }
}
