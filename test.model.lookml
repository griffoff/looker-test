- connection: snowflake_dw

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: dim_activity
  joins:
    - join: fact_activity
      foreign_key: dim_activity.activityid

- explore: dim_course
  joins:
    - join: dim_start_date 
      sql_on: ${dim_course.startdatekey} = ${dim_start_date.datekey}
      relationship: many_to_one
    - join: dim_end_date 
      sql_on: ${dim_course.enddatekey} = ${dim_end_date.datekey}
      relationship: many_to_one
    - join: dim_product
      relationship: many_to_one
      sql_on: ${dim_course.productid} = ${dim_product.productid}
    - join: dim_productplatform
      relationship: many_to_one
      sql_on: ${dim_course.productplatformid} = ${dim_productplatform.productplatformid}

- explore: dim_course_rs
  joins:
    - join: dim_start_date 
      sql_on: ${dim_course_rs.startdatekey} = ${dim_start_date.datekey}
      relationship: many_to_one
    - join: dim_end_date 
      sql_on: ${dim_course_rs.enddatekey} = ${dim_end_date.datekey}
      relationship: many_to_one
    - join: dim_product
      relationship: many_to_one
      sql_on: ${dim_course_rs.productid} = ${dim_product.productid}
    - join: dim_productplatform
      relationship: many_to_one
      sql_on: ${dim_course_rs.productplatformid} = ${dim_productplatform.productplatformid}

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

- explore: fact_resourceinteraction
  joins:
    - join: dim_student
      sql_on: fact_resourceinteraction.guid = dim_student.student_guid
      relationship: many_to_one
    - join: dim_course
      sql_on: fact_resourceinteraction.coursekey = dim_course.coursekey
      relationship: many_to_one
    - join: dim_institution
      foreign_key: dim_course.institutionid
      relationship: many_to_one
    - join: dim_product 
      foreign_key: dim_course.productid
      relationship: many_to_one
      
- explore: fact_activityaggregate
  joins:
    - join: dim_student
      sql_on: fact_activityaggregate.guid = dim_student.user_guid
      relationship: many_to_one
    - join: dim_course
      sql_on: fact_activityaggregate.coursekey = dim_course.coursekey
      relationship: many_to_one
    - join: dim_institution
      foreign_key: dim_course.institutionid
      relationship: many_to_one
    - join: dim_product 
      foreign_key: dim_course.productid
      relationship: many_to_one
    
- explore: fact_activity
  joins:
    - join: fact_learningobjective
      sql_on: fact_activity.courseid=fact_learningobjective.courseid and fact_activity.institutionid=fact_learningobjective.institutionid and fact_activity.instructorid=fact_learningobjective.instructorid and fact_activity.studentid=fact_learningobjective.studentid and fact_activity.activityid=fact_learningobjective.activityid
      relationship: many_to_one
    - join: dim_institution
      foreign_key: fact_activity.institutionid
      relationship: many_to_one
    - join: dim_student
      foreign_key: fact_activity.studentid
      relationship: many_to_one
    - join: dim_course_rs
      foreign_key: fact_activity.courseid
      relationship: many_to_one
    - join: dim_activity
      foreign_key: fact_activity.activityid
      relationship: many_to_one
    - join: dim_product
      foreign_key: fact_activity.productid
      relationship: many_to_one
    - join: dim_date 
      foreign_key: fact_activity.activitystartdatekey
      relationship: many_to_one
    - join: dim_learningobjective
      foreign_key: fact_learningobjective.learningobjectiveid
      relationship: many_to_one
      
- explore: fact_learningobjective
  joins:
    - join: dim_learningobjective
      foreign_key: fact_learningobjective.learningobjectiveid
      relationship: many_to_one
      
- explore: map_activity_type

- explore: student_course_metrics
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
      
- explore: student_course_octant
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}

- explore: rch_studentinteraction
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}

- explore: et_report1
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: et_narrative
      relationship: many_to_one
      sql_on: ${coursekey} = ${et_narrative.coursekey}
    - join: full_student_course_metrics
      relationship: one_to_one
      sql_on: ${coursekey} = ${full_student_course_metrics.coursekey} and ${user_guid} = ${full_student_course_metrics.user_guid}
    
- explore: et_narrative
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}
    - join: et_report1
      relationship: one_to_many
      sql_on: ${coursekey} = ${et_report1.coursekey}
      
- explore: full_student_course_metrics
  extends: [dim_course]
  joins:
    - join: dim_course
      relationship: many_to_one
      sql_on: ${coursekey} = ${dim_course.coursekey}

    - join: dim_user
      sql_on: ${user_guid} = ${dim_user.user_guid}
      relationship: many_to_one
      