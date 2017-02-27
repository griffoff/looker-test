view: dim_institution {
  label: "Institution"
  sql_table_name: DW_GA.DIM_INSTITUTION ;;

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: dw_ldid {
    type: string
    sql: ${TABLE}.DW_LDID ;;
    hidden: yes
  }

  dimension_group: dw_ldts {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DW_LDTS ;;
    hidden: yes
  }

  dimension: enrollmentnumber {
    type: string
    sql: ${TABLE}.ENROLLMENTNUMBER ;;
  }

  dimension: entity_no {
    type: string
    sql: ${TABLE}.ENTITY_NO ;;
  }

  dimension: estimatedenrollmentlevel {
    type: string
    sql: ${TABLE}.ESTIMATEDENROLLMENTLEVEL ;;
  }

  dimension: institutionid {
    type: string
    sql: ${TABLE}.INSTITUTIONID ;;
    primary_key: yes
    hidden: yes
  }

  dimension: institutionname {
    label: "Institution Name"
    type: string
    sql: ${TABLE}.INSTITUTIONNAME ;;
  }

  dimension: locationid {
    type: string
    sql: ${TABLE}.LOCATIONID ;;
    hidden: yes
  }

  dimension: marketsegmentmajor {
    type: string
    sql: ${TABLE}.MARKETSEGMENTMAJOR ;;
  }

  dimension: marketsegmentminor {
    type: string
    sql: ${TABLE}.MARKETSEGMENTMINOR ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  measure: count {
    type: count
    drill_fields: [institutionname]
  }
}
