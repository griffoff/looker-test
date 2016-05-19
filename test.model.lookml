- connection: snowflake_dw

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: dim_activity
  joins:
    - join: fact_activity
      foreign_key: dim_activity.activityid

- explore: dim_course

- explore: dim_course_rs

- explore: dim_date

- explore: dim_institution

- explore: dim_instructor

- explore: dim_learningobjective

- explore: dim_product

- explore: dim_productplatform

- explore: dim_relativedate

- explore: dim_scorecategory

- explore: dim_student

- explore: dim_time

- explore: fact_activity
  joins:
    - join: dim_institution
      foreign_key: fact_activity.institutionid
    - join: dim_student
      foreign_key: fact_activity.studentid
    - join: dim_activity
      foreign_key: fact_activity.activityid
    - join: dim_product
      foreign_key: fact_activity.productid
    - join: dim_date 
      foreign_key: fact_activity.activitystartdatekey
      
- explore: fact_activity_latest_v

- explore: fact_activity_v

- explore: fact_learningobjective

- explore: fact_learningobjective_latest_v

- explore: fact_learningobjective_v

- explore: map_activity_type

- explore: student_course_metrics
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: student_course_metrics.coursekey = dim_course.coursekey



