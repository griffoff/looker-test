view: student_attributes {
  label: "Student"
  # # You can specify the table name if it's different from the view name:
  #   sql_table_name: my_schema_name.student_attributes
  #
  #  fields:
  # #     Define your dimensions and measures here, like this:
  #     - dimension: id
  #       type: number
  #       sql: ${TABLE}.id
  #
  #     - dimension: created
  #       type: time
  #       timeframes: [date, week, month, year]
  #       sql: ${TABLE}.created_at
  #
  #     - measure: count
  #       type: count

  derived_table: {
    sql: SELECT
        user_guid as user_guid
         ,COUNT(distinct coursekey) as number_of_courses
      FROM DW_DEVMATH.full_student_course_metrics
      GROUP BY user_guid
       ;;
  }

  dimension: user_guid {
    type: string
    sql: ${TABLE}.user_guid ;;
    primary_key: yes
    hidden: yes
  }

  dimension: number_of_courses {
    label: "No. of Courses"
    type: tier
    style: integer
    tiers: [1, 2, 5, 10]
    sql: ${TABLE}.number_of_courses ;;
  }
}