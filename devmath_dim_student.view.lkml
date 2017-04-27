view: dim_student {
  label: "Student"
  sql_table_name: DW_DEVMATH.DIM_STUDENT ;;

  dimension: student {
    type: string
    sql: ${TABLE}.STUDENT ;;
  }

  dimension: student_guid {
    label: "Student SSO Guid"
    type: string
    sql: ${TABLE}.STUDENT_GUID ;;
  }

  measure: student_count {
    label: "No. of Students"
    type: count_distinct
    sql: ${TABLE}.STUDENT_GUID ;;
  }

  dimension: studentid {
    type: string
    sql: ${TABLE}.STUDENTID ;;
    primary_key: yes
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}