view: dim_relativedate {
  label: "Relative Date"
  sql_table_name: DW_GA.DIM_RELATIVEDATE ;;

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: days {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.DAYS ;;
  }

  dimension: daysname {
    label: "Relative Days"
    type: string
    sql: ${TABLE}.DAYSNAME ;;
    order_by_field: days
  }

  dimension: months {
    type: string
    sql: ${TABLE}.MONTHS ;;
  }

  dimension: monthsname {
    type: string
    sql: ${TABLE}.MONTHSNAME ;;
  }

  dimension: weeks {
    hidden: yes
    type: number
    sql: ${TABLE}.WEEKS ;;
  }

  dimension: weeksname {
    label: "Relative Weeks"
    type: string
    sql: ${TABLE}.WEEKSNAME ;;
    order_by_field: weeks
  }
}

view: dim_relative_to_start_date {
  extends: [dim_relativedate]
  label: "Relative To Start Date"
}

view: dim_relative_to_end_date {
  extends: [dim_relativedate]
  label: "Relative to End Date"
}
