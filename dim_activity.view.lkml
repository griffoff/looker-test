view: dim_activity {
  label: "Activity"
  sql_table_name: DW_GA.DIM_ACTIVITY ;;

  dimension: activitydescription {
    label: "Activity Description"
    type: string
    sql: ${TABLE}.ACTIVITYDESCRIPTION ;;
  }

  dimension: activityid {
    type: number
    sql: ${TABLE}.ACTIVITYID ;;
    primary_key: yes
    hidden: yes
  }

  dimension: activitysort {
    type: string
    sql: ${TABLE}.ACTIVITYSORT ;;
    hidden: yes
  }

  dimension: activitytitle {
    label: "Activity Title"
    type: string
    sql: ${TABLE}.ACTIVITYTITLE ;;
  }

  dimension: activitytype {
    label: "Activity Type"
    type: string
    sql: ${TABLE}.ACTIVITYTYPE ;;
  }

  dimension: cgi {
    label: "Activity CGI"
    type: string
    sql: ${TABLE}.CGI ;;
  }

  measure: count {
    label: "No. of Activities"
    type: count
    drill_fields: []
  }
}
