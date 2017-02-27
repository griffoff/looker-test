view: dim_instructor {
  sql_table_name: DW_GA.DIM_INSTRUCTOR ;;

  dimension: instructor {
    type: string
    sql: ${TABLE}.INSTRUCTOR ;;
  }

  dimension: instructor_guid {
    type: string
    sql: ${TABLE}.INSTRUCTOR_GUID ;;
  }

  dimension: instructorid {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.INSTRUCTORID ;;
  }

  measure: instructorcount {
    type: count
    drill_fields: []
  }
}
