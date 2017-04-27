view: dim_activity {
  label: "Activity"
  sql_table_name: DW_DEVMATH.DIM_ACTIVITY ;;

#   dimension: activitydescription {
#     label: "Activity Description"
#     type: string
#     sql: ${TABLE}.ACTIVITYDESCRIPTION ;;
#   }

  dimension: activityid {
    type: number
    sql: ${TABLE}.ACTIVITYID ;;
    primary_key: yes
    hidden: no
  }

  dimension: activitysort {
    type: string
    sql: ${TABLE}.ACTIVITYSORT ;;
    hidden: yes
  }

#   dimension: category {
#     label: "Activity Category"
#     type: string
#     sql: ${TABLE}.CATEGORY ;;
#   }
#
#   dimension: subcategory {
#     label: "Activity Sub Category"
#     type: string
#     sql: ${TABLE}.SUBCATEGORY ;;
#   }
#
#   dimension: subtype {
#     label: "Activity Sub Type"
#     type: string
#     sql: ${TABLE}.SUBTYPE ;;
#  }

  dimension: applicationname {
    label: "Application Name"
    type: string
    sql: ${TABLE}.APPLICATIONNAME ;;
  }

  dimension: url {
    label: "Activity Url"
    type: string
    sql: ${TABLE}.URL ;;
  }

   dimension: activitytitle {
     label: "Activity Title"
     type: string
     sql: ${TABLE}.ACTIVITYTITLE ;;
   }

  dimension: activitydescription {
    label: "Activity Description"
    type: string
    sql: ${TABLE}.ACTIVITYDESCRIPTION ;;
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
